-- Add REFUND to transactiontype enum
ALTER TYPE transactiontype ADD VALUE IF NOT EXISTS 'REFUND';

INSERT INTO schema_migrations (version) VALUES ('008_add_refund_type') ON CONFLICT (version) DO NOTHING;
