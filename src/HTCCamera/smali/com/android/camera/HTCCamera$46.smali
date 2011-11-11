.class Lcom/android/camera/HTCCamera$46;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->initZoomBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$46;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const-string v1, "HTCCamera"

    iget-object v0, p0, Lcom/android/camera/HTCCamera$46;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera$46;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$46;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$46;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$9800(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera$46;->this$0:Lcom/android/camera/HTCCamera;

    iget v0, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "HTCCamera"

    const-string v0, "control Zoom bar when focusing, cancel focus"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$46;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()V

    const-string v0, "HTCCamera"

    const-string v0, "UnBlock Capture UI - control Zoom bar and cancel focus"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    :cond_2
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1700()Z

    move-result v0

    if-ne v0, v3, :cond_4

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v0, "HTCCamera"

    const-string v0, "control Zoom bar when focusing, but device can\'t cancel focus"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera$46;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$9900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ZoomBar;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera$46;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$16600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ZoomBar;->setTouchPosition(I)V

    move v0, v3

    goto :goto_0
.end method
