class PaginatedData<T> {
  final List<T> items;
  final int totalItems;
  final int perPage;
  final int currentPage;
  final int totalPages;

  const PaginatedData({
    required this.items,
    required this.totalItems,
    required this.perPage,
    required this.currentPage,
    required this.totalPages,
  });

  factory PaginatedData.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    return PaginatedData<T>(
      items: (json['data'] as List)
          .map((item) => fromJsonT(item as Map<String, dynamic>))
          .toList(),
      totalItems: json['total_items'] as int,
      perPage: json['per_page'] as int,
      currentPage: json['current_page'] as int,
      totalPages: json['total_pages'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': items,
      'total_items': totalItems,
      'per_page': perPage,
      'current_page': currentPage,
      'total_pages': totalPages,
    };
  }

  PaginatedData<T> copyWith({
    List<T>? items,
    int? totalItems,
    int? perPage,
    int? currentPage,
    int? totalPages,
  }) {
    return PaginatedData<T>(
      items: items ?? this.items,
      totalItems: totalItems ?? this.totalItems,
      perPage: perPage ?? this.perPage,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PaginatedData<T> &&
        other.items == items &&
        other.totalItems == totalItems &&
        other.perPage == perPage &&
        other.currentPage == currentPage &&
        other.totalPages == totalPages;
  }

  @override
  int get hashCode {
    return items.hashCode ^
        totalItems.hashCode ^
        perPage.hashCode ^
        currentPage.hashCode ^
        totalPages.hashCode;
  }

  @override
  String toString() {
    return 'PaginatedData<$T>(items: $items, totalItems: $totalItems, perPage: $perPage, currentPage: $currentPage, totalPages: $totalPages)';
  }
}
