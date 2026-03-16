-- Add CARD_PAYMENT to transactiontype enum
ALTER TYPE transactiontype ADD VALUE IF NOT EXISTS 'CARD_PAYMENT';

INSERT INTO schema_migrations (version) VALUES ('007_add_card_payment_type') ON CONFLICT (version) DO NOTHING;
