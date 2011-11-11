.class Lcom/android/camera/HTCCamera$25;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/HTCCamera$25;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapture(Landroid/view/MotionEvent;II)Z
    .locals 7

    const-wide/16 v5, 0x3e8

    const/4 v4, 0x0

    const/16 v3, 0x42

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget v0, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v0, v2, :cond_8

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1700()Z

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget v0, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v0

    if-ne v0, v2, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0, v4}, Lcom/android/camera/HTCCamera;->access$10602(Lcom/android/camera/HTCCamera;Z)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_5
    :goto_1
    move v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$10600(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget v1, v1, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$10700(Lcom/android/camera/HTCCamera;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget v1, v1, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget v1, v1, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move v0, v2

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_a
    :goto_2
    move v0, v2

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0, p2}, Lcom/android/camera/HTCCamera;->access$14002(Lcom/android/camera/HTCCamera;I)I

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0, p3}, Lcom/android/camera/HTCCamera;->access$14102(Lcom/android/camera/HTCCamera;I)I

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0, v4}, Lcom/android/camera/HTCCamera;->access$10602(Lcom/android/camera/HTCCamera;Z)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$10600(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$10600(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget v1, v1, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$10700(Lcom/android/camera/HTCCamera;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
