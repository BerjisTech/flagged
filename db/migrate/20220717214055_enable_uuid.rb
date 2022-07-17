class EnableUuid < ActiveRecord::Migration[7.0]
  def change
    # Enable pgcrypto extension
    enable_extension 'pgcrypto'
  end
end
