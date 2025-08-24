# API Routes

## Authentication (/auth)

*   **POST** `/auth/register` - Register a new user
*   **POST** `/auth/login` - User login
*   **GET** `/auth/me` - Get current user profile (Requires JWT)
*   **GET** `/auth/profile` - Get user profile (Requires JWT)
*   **POST** `/auth/logout` - Logout user (Requires JWT)
*   **GET** `/auth/validate` - Validate JWT token

## Users (/users)

*   **POST** `/users` - Create a new user
*   **GET** `/users` - Get all users
*   **GET** `/users/:id` - Get a user by ID
*   **PATCH** `/users/:id` - Update a user by ID
*   **DELETE** `/users/:id` - Delete a user by ID

## Vendors (/vendors)

*   **POST** `/vendors/register` - Register a new vendor
*   **POST** `/vendors/login` - Vendor login
*   **GET** `/vendors/recommended` - Get recommended vendors (Requires JWT)
    *   Query Params: `latitude` (number, required), `longitude` (number, required), `sortBy` (string), `sortOrder` (string), `page` (number), `limit` (number), `cuisine` (string), `dietaryRestrictions` (string array)
*   **GET** `/vendors/search` - Find vendors by location and meal type
    *   Query Params: `latitude` (number, required), `longitude` (number, required), `mealType` (string, required), `radius` (number), `sortBy` (string), `sortOrder` (string), `page` (number), `limit` (number), `cuisine` (string), `dietaryRestrictions` (string array)

## Vendor Menu (/vendor-menu) (All routes require JWT)

*   **POST** `/vendor-menu` - Create new vendor menu
*   **GET** `/vendor-menu` - Get all menus with filtering
    *   Query Params: `vendorId` (string), `mealType` (enum: BREAKFAST, LUNCH, DINNER), `status` (enum: AVAILABLE, UNAVAILABLE), `date` (string YYYY-MM-DD), `page` (number), `limit` (number)
*   **GET** `/vendor-menu/:id` - Get menu by ID
*   **PATCH** `/vendor-menu/:id` - Update menu
*   **DELETE** `/vendor-menu/:id` - Soft delete menu
*   **GET** `/vendor-menu/by-vendor/:vendorId` - Get all menus for a specific vendor
    *   Query Params: `mealType` (enum: BREAKFAST, LUNCH, DINNER)
*   **GET** `/vendor-menu/available` - Get available menus
    *   Query Params: `mealType` (enum: BREAKFAST, LUNCH, DINNER)

## Meal Subscriptions (/subscriptions) (All routes require JWT)

*   **POST** `/subscriptions` - Create new meal subscription
*   **GET** `/subscriptions/current` - Get current active subscriptions for authenticated user
    *   Query Params: `page` (number), `limit` (number), `mealType` (enum: BREAKFAST, LUNCH, DINNER), `startDate` (date), `endDate` (date)
*   **GET** `/subscriptions` - Get user subscriptions with filters
    *   Query Params: `status` (enum: ACTIVE, PAUSED, CANCELLED, EXPIRED), `page` (number), `limit` (number), `mealType` (enum: BREAKFAST, LUNCH, DINNER)
*   **GET** `/subscriptions/:id` - Get subscription by ID
*   **PATCH** `/subscriptions/:id` - Update subscription status

## Notifications (/notifications) (All routes require JWT)

*   **GET** `/notifications` - Get user notifications
*   **POST** `/notifications/:id/read` - Mark notification as read
*   **POST** `/notifications/read-all` - Mark all notifications as read
*   **DELETE** `/notifications/:id` - Delete notification

## Payments (/payments) (All routes require JWT)

*   **POST** `/payments` - Create payment for subscription
*   **GET** `/payments/history` - Get payment history
*   **POST** `/payments/:id/refund` - Refund payment

## Ratings (/ratings)

*   **POST** `/ratings/vendors/:vendorId` - Create a rating for a vendor (Requires JWT)
*   **GET** `/ratings/vendors/:vendorId` - Get all ratings for a vendor
*   **GET** `/ratings/vendors/:vendorId/average` - Get the average rating for a vendor

## Roles (/roles)

*   **POST** `/roles` - Create a new role
*   **GET** `/roles` - Get all roles
*   **GET** `/roles/:id` - Get a role by ID