class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists
    mail(to: @user.email , subject: "[JDstore] 感谢你完成本次下单，以下是你这次购物明细 #{order.token}")
  end

  def apply_cancel(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists
    mail(to: "admin@text.com" , subject: "[JDStore] 用户#{order.user.email}申请取消订单 #{order.token}")
  end
end
