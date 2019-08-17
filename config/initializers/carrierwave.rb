CarrierWave.configure do |config|
  config.storage            = :qiniu
  config.qiniu_access_key   = ENV["qiniu_access_key"]
  config.qiniu_secret_key   = ENV["qiniu_secret_key"]
  config.qiniu_bucket       = ENV["qiniu_bucket"]
  config.qiniu_bucket_domain = ENV["qiniu_bucket_doamin"]
  config.qiuniu_block_size  = 4*1024*1024
  config.qiniu_protocol     = "http"
  config.qiniu_up_host      = "http://portal.qiniu.com"  #选择不同的区域时，"portal.qiniu.com" 不同
end
