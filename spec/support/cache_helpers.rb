module CacheHelpers
  def set_cache(key, value)
    Rubyhome::GlobalCache.instance[1] ||= Rubyhome::Cache.new
    Rubyhome::GlobalCache.instance[1][key.to_sym] = value
  end

  def read_cache(key)
    Rubyhome::GlobalCache.instance[1] ||= Rubyhome::Cache.new
    Rubyhome::GlobalCache.instance[1][key.to_sym]
  end
end

RSpec.configure do |config|
  config.include CacheHelpers
end
