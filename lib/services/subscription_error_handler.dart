import 'package:flutter/material.dart';
import 'package:meal_app/utils/result.dart';

/// Enhanced error handling service for subscription operations
///
/// Provides comprehensive error categorization, user-friendly messages,
/// and recovery suggestions for subscription-related failures.
class SubscriptionErrorHandler {
  /// Handles subscription creation errors with detailed feedback
  static SubscriptionErrorResult handleSubscriptionCreationError(
    dynamic error, {
    String? context,
  }) {
    if (error is SubscriptionValidationError) {
      return SubscriptionErrorResult(
        type: SubscriptionErrorType.validation,
        userMessage: error.message,
        technicalMessage: error.details,
        suggestions: error.suggestions,
        canRetry: true,
        severity: ErrorSeverity.warning,
      );
    }

    if (error is NetworkException) {
      return SubscriptionErrorResult(
        type: SubscriptionErrorType.network,
        userMessage:
            'Unable to connect to our servers. Please check your internet connection.',
        technicalMessage: error.toString(),
        suggestions: [
          'Check your internet connection',
          'Try again in a few moments',
          'Contact support if the problem persists'
        ],
        canRetry: true,
        severity: ErrorSeverity.error,
      );
    }

    if (error is PaymentException) {
      return SubscriptionErrorResult(
        type: SubscriptionErrorType.payment,
        userMessage:
            'Payment processing failed. Please check your payment information.',
        technicalMessage: error.toString(),
        suggestions: [
          'Verify your payment details',
          'Try a different payment method',
          'Contact your bank if needed'
        ],
        canRetry: true,
        severity: ErrorSeverity.error,
      );
    }

    if (error is VendorUnavailableException) {
      return SubscriptionErrorResult(
        type: SubscriptionErrorType.vendorUnavailable,
        userMessage:
            'Selected vendor is currently unavailable for the chosen dates.',
        technicalMessage: error.toString(),
        suggestions: [
          'Choose different dates',
          'Select an alternative vendor',
          'Contact support for assistance'
        ],
        canRetry: true,
        severity: ErrorSeverity.warning,
      );
    }

    // Generic error handling
    return SubscriptionErrorResult(
      type: SubscriptionErrorType.unknown,
      userMessage: 'An unexpected error occurred. Please try again.',
      technicalMessage: error.toString(),
      suggestions: [
        'Try again in a few moments',
        'Contact support if the problem continues'
      ],
      canRetry: true,
      severity: ErrorSeverity.error,
    );
  }

  /// Handles API response errors with proper categorization
  static SubscriptionErrorResult handleApiError(
      int statusCode, String? message) {
    switch (statusCode) {
      case 400:
        return SubscriptionErrorResult(
          type: SubscriptionErrorType.validation,
          userMessage:
              'Invalid subscription request. Please check your selections.',
          technicalMessage: 'HTTP 400: ${message ?? 'Bad Request'}',
          suggestions: [
            'Review your meal selections',
            'Check subscription dates',
            'Ensure all required fields are filled'
          ],
          canRetry: true,
          severity: ErrorSeverity.warning,
        );

      case 401:
        return SubscriptionErrorResult(
          type: SubscriptionErrorType.authentication,
          userMessage: 'Please log in to create a subscription.',
          technicalMessage: 'HTTP 401: ${message ?? 'Unauthorized'}',
          suggestions: [
            'Log in to your account',
            'Check your session hasn\'t expired'
          ],
          canRetry: false,
          severity: ErrorSeverity.error,
        );

      case 403:
        return SubscriptionErrorResult(
          type: SubscriptionErrorType.permission,
          userMessage: 'You don\'t have permission to perform this action.',
          technicalMessage: 'HTTP 403: ${message ?? 'Forbidden'}',
          suggestions: [
            'Contact support for assistance',
            'Verify your account status'
          ],
          canRetry: false,
          severity: ErrorSeverity.error,
        );

      case 404:
        return SubscriptionErrorResult(
          type: SubscriptionErrorType.notFound,
          userMessage: 'The requested vendor or menu is no longer available.',
          technicalMessage: 'HTTP 404: ${message ?? 'Not Found'}',
          suggestions: [
            'Refresh the page',
            'Select a different vendor',
            'Contact support if needed'
          ],
          canRetry: true,
          severity: ErrorSeverity.warning,
        );

      case 409:
        return SubscriptionErrorResult(
          type: SubscriptionErrorType.conflict,
          userMessage:
              'You already have an active subscription for this period.',
          technicalMessage: 'HTTP 409: ${message ?? 'Conflict'}',
          suggestions: [
            'Check your existing subscriptions',
            'Choose different dates',
            'Modify your current subscription instead'
          ],
          canRetry: false,
          severity: ErrorSeverity.warning,
        );

      case 422:
        return SubscriptionErrorResult(
          type: SubscriptionErrorType.validation,
          userMessage: 'Some subscription details are invalid or incomplete.',
          technicalMessage: 'HTTP 422: ${message ?? 'Unprocessable Entity'}',
          suggestions: [
            'Review all form fields',
            'Check date selections',
            'Ensure meal quantities are valid'
          ],
          canRetry: true,
          severity: ErrorSeverity.warning,
        );

      case 429:
        return SubscriptionErrorResult(
          type: SubscriptionErrorType.rateLimited,
          userMessage:
              'Too many requests. Please wait a moment before trying again.',
          technicalMessage: 'HTTP 429: ${message ?? 'Too Many Requests'}',
          suggestions: [
            'Wait a few minutes before retrying',
            'Avoid rapid successive requests'
          ],
          canRetry: true,
          severity: ErrorSeverity.warning,
        );

      case 500:
        return SubscriptionErrorResult(
          type: SubscriptionErrorType.serverError,
          userMessage:
              'Our servers are experiencing issues. Please try again later.',
          technicalMessage: 'HTTP 500: ${message ?? 'Internal Server Error'}',
          suggestions: [
            'Try again in a few minutes',
            'Contact support if the problem persists'
          ],
          canRetry: true,
          severity: ErrorSeverity.error,
        );

      case 503:
        return SubscriptionErrorResult(
          type: SubscriptionErrorType.serviceUnavailable,
          userMessage: 'The subscription service is temporarily unavailable.',
          technicalMessage: 'HTTP 503: ${message ?? 'Service Unavailable'}',
          suggestions: [
            'Try again in a few minutes',
            'Check our status page for updates'
          ],
          canRetry: true,
          severity: ErrorSeverity.error,
        );

      default:
        return SubscriptionErrorResult(
          type: SubscriptionErrorType.unknown,
          userMessage: 'An unexpected error occurred. Please try again.',
          technicalMessage: 'HTTP $statusCode: ${message ?? 'Unknown Error'}',
          suggestions: [
            'Try again in a few moments',
            'Contact support if the problem continues'
          ],
          canRetry: true,
          severity: ErrorSeverity.error,
        );
    }
  }

  /// Creates user-friendly error dialogs
  static Widget createErrorDialog(
    BuildContext context,
    SubscriptionErrorResult error, {
    VoidCallback? onRetry,
    VoidCallback? onDismiss,
  }) {
    return AlertDialog(
      icon: Icon(
        _getErrorIcon(error.type),
        color: _getErrorColor(error.severity),
        size: 32,
      ),
      title: Text(_getErrorTitle(error.type)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(error.userMessage),
          if (error.suggestions.isNotEmpty) ...[
            const SizedBox(height: 16),
            Text(
              'Suggestions:',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            ...error.suggestions.map((suggestion) => Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('• ',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                      Expanded(child: Text(suggestion)),
                    ],
                  ),
                )),
          ],
        ],
      ),
      actions: [
        if (error.canRetry && onRetry != null)
          TextButton(
            onPressed: onRetry,
            child: const Text('Retry'),
          ),
        TextButton(
          onPressed: onDismiss ?? () => Navigator.of(context).pop(),
          child: const Text('OK'),
        ),
      ],
    );
  }

  /// Creates error snack bars for quick feedback
  static SnackBar createErrorSnackBar(
    SubscriptionErrorResult error, {
    VoidCallback? onRetry,
  }) {
    return SnackBar(
      backgroundColor: _getErrorColor(error.severity),
      content: Row(
        children: [
          Icon(
            _getErrorIcon(error.type),
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(width: 8),
          Expanded(child: Text(error.userMessage)),
        ],
      ),
      action: error.canRetry && onRetry != null
          ? SnackBarAction(
              label: 'Retry',
              textColor: Colors.white,
              onPressed: onRetry,
            )
          : null,
    );
  }

  static IconData _getErrorIcon(SubscriptionErrorType type) {
    switch (type) {
      case SubscriptionErrorType.validation:
        return Icons.warning_outlined;
      case SubscriptionErrorType.network:
        return Icons.wifi_off_outlined;
      case SubscriptionErrorType.payment:
        return Icons.payment_outlined;
      case SubscriptionErrorType.vendorUnavailable:
        return Icons.store_mall_directory_outlined;
      case SubscriptionErrorType.authentication:
        return Icons.lock_outline;
      case SubscriptionErrorType.permission:
        return Icons.block_outlined;
      case SubscriptionErrorType.notFound:
        return Icons.search_off_outlined;
      case SubscriptionErrorType.conflict:
        return Icons.event_busy_outlined;
      case SubscriptionErrorType.rateLimited:
        return Icons.timer_outlined;
      case SubscriptionErrorType.serverError:
        return Icons.error_outline;
      case SubscriptionErrorType.serviceUnavailable:
        return Icons.cloud_off_outlined;
      case SubscriptionErrorType.unknown:
        return Icons.help_outline;
    }
  }

  static String _getErrorTitle(SubscriptionErrorType type) {
    switch (type) {
      case SubscriptionErrorType.validation:
        return 'Validation Error';
      case SubscriptionErrorType.network:
        return 'Connection Error';
      case SubscriptionErrorType.payment:
        return 'Payment Error';
      case SubscriptionErrorType.vendorUnavailable:
        return 'Vendor Unavailable';
      case SubscriptionErrorType.authentication:
        return 'Authentication Required';
      case SubscriptionErrorType.permission:
        return 'Permission Denied';
      case SubscriptionErrorType.notFound:
        return 'Not Found';
      case SubscriptionErrorType.conflict:
        return 'Subscription Conflict';
      case SubscriptionErrorType.rateLimited:
        return 'Rate Limited';
      case SubscriptionErrorType.serverError:
        return 'Server Error';
      case SubscriptionErrorType.serviceUnavailable:
        return 'Service Unavailable';
      case SubscriptionErrorType.unknown:
        return 'Unexpected Error';
    }
  }

  static Color _getErrorColor(ErrorSeverity severity) {
    switch (severity) {
      case ErrorSeverity.info:
        return Colors.blue;
      case ErrorSeverity.warning:
        return Colors.orange;
      case ErrorSeverity.error:
        return Colors.red;
    }
  }
}

/// Types of subscription errors
enum SubscriptionErrorType {
  validation,
  network,
  payment,
  vendorUnavailable,
  authentication,
  permission,
  notFound,
  conflict,
  rateLimited,
  serverError,
  serviceUnavailable,
  unknown,
}

/// Error severity levels
enum ErrorSeverity {
  info,
  warning,
  error,
}

/// Comprehensive error result with user guidance
class SubscriptionErrorResult {
  final SubscriptionErrorType type;
  final String userMessage;
  final String technicalMessage;
  final List<String> suggestions;
  final bool canRetry;
  final ErrorSeverity severity;

  const SubscriptionErrorResult({
    required this.type,
    required this.userMessage,
    required this.technicalMessage,
    required this.suggestions,
    required this.canRetry,
    required this.severity,
  });
}

/// Custom exceptions for better error handling
class SubscriptionValidationError implements Exception {
  final String message;
  final String details;
  final List<String> suggestions;

  const SubscriptionValidationError({
    required this.message,
    required this.details,
    required this.suggestions,
  });
}

class NetworkException implements Exception {
  final String message;
  const NetworkException(this.message);

  @override
  String toString() => 'NetworkException: $message';
}

class PaymentException implements Exception {
  final String message;
  final String? paymentMethodId;

  const PaymentException(this.message, {this.paymentMethodId});

  @override
  String toString() => 'PaymentException: $message';
}

class VendorUnavailableException implements Exception {
  final String vendorId;
  final DateTime requestedDate;
  final String message;

  const VendorUnavailableException({
    required this.vendorId,
    required this.requestedDate,
    required this.message,
  });

  @override
  String toString() => 'VendorUnavailableException: $message';
}
