INNER JOIN (Fundamentals)

    List each product name with its brand (assuming brand_id → brand mapping).
    Show cart items with product names and user who owns the cart.
    List all reviews with the product name and the reviewer's username.
    Show all images with the associated product name.
    Find all users who have reviewed at least one product, along with the review text.
    List cart items with product price and total cost (price * count).
    List each product with its available sizes.
    Show products and their discount amounts (from ProductDiscountM2M).
    List all product colors using the many-to-many color mapping.
    List products that have images and reviews.

LEFT JOIN (Optional Relationships)

    List all users and any review they may have written (if any).
    List all products and any image (show NULL if no image).
    List all products and their discount (even if no discount exists).
    Show each cart and the associated user's username.
    Show each product and its sizes (if no size exists, show NULL).
    List users and carts they own (some may not own any).
    List all products and all their reviews (NULL if no review).
    List all products with possible discounts and sizes.
    List each cart item with possible related image of the product.
    Show products with their reviews and their reviewers’ usernames (show product even if no review).

RIGHT JOIN (Reverse Optional Relationships)

    List all reviews and their users (some reviews may have lost user data).
    List all images and the users who uploaded them (user may be deleted).
    Show all cart items and the products they reference (may reference non-existent product).
    List all product-color mappings, and the corresponding product names.
    List all product-size mappings, and corresponding size names.
    List all discount-product mappings and the product data.
    Show all product reviews and include product name and user data.
    Show all cart items and their carts (some orphaned cart items?).
    Show all images and products they relate to (missing product shows NULL).
    List all reviews and the full reviewer name (some with NULL).

FULL OUTER JOIN (Complete Coverage)

    List all products and all reviews (even if not matched).
    List all users and all images (even if no user or image is missing).
    List all carts and users (include unmatched).
    Show all product-discount matches or standalone products/discounts.
    List all products and their cart items (if any).
    List all colors used and products using them (include orphan colors).
    Show all sizes and products using them (if any).
    List all reviews with user and product data, but include unmatched records.
    List all cart items and related carts or products (fully matched or not).
    List all image-product-user mappings (include all unmatched).

CROSS JOIN (Combinations)

    Get all possible combinations of users and products (for test data generation).
    Show all possible color-size combinations.
    List all combinations of users and discounts.
    Generate a report of all possible cart-product pairs.
    Show all possible product-review combinations (for mock matching).
    Cross join products and sizes to simulate inventory planning.
    Create a list of all user-product pairings (for recommender testing).
    Combine all discounts and all products for testing future discount planning.
    Cross join users and colors to simulate theme preferences.
    Generate a full matrix of users, products, and sizes (three-table cross logic).
