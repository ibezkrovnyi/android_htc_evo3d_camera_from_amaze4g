.class Lcom/android/camera/HTCCamera$29;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->onRotateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$29;->this$0:Lcom/android/camera/HTCCamera;

    iput p2, p0, Lcom/android/camera/HTCCamera$29;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$29;->this$0:Lcom/android/camera/HTCCamera;

    iget v1, p0, Lcom/android/camera/HTCCamera$29;->val$orientation:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera$29;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$14200(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->setIconPosition(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$29;->this$0:Lcom/android/camera/HTCCamera;

    iget v1, p0, Lcom/android/camera/HTCCamera$29;->val$orientation:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera$29;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$14300(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->setIconPosition(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
