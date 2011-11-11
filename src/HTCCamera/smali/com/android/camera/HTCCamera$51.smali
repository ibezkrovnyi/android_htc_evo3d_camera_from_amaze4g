.class Lcom/android/camera/HTCCamera$51;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->showSceneIndicatorAnimation(Landroid/view/View;FFIIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;

.field final synthetic val$nMode:I

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$51;->this$0:Lcom/android/camera/HTCCamera;

    iput p2, p0, Lcom/android/camera/HTCCamera$51;->val$orientation:I

    iput p3, p0, Lcom/android/camera/HTCCamera$51;->val$nMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    iget-object v3, p0, Lcom/android/camera/HTCCamera$51;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/camera/HTCCamera$51;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getSelfTimer(Landroid/app/Activity;)I

    move-result v2

    const/4 v0, 0x0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera$51;->this$0:Lcom/android/camera/HTCCamera;

    iget v4, p0, Lcom/android/camera/HTCCamera$51;->val$orientation:I

    iget v5, p0, Lcom/android/camera/HTCCamera$51;->val$nMode:I

    invoke-static {v3, v0, v4, v5}, Lcom/android/camera/HTCCamera;->access$16700(Lcom/android/camera/HTCCamera;ZII)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera$51;->this$0:Lcom/android/camera/HTCCamera;

    if-nez v1, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    iget v6, p0, Lcom/android/camera/HTCCamera$51;->val$nMode:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/HTCCamera;->access$16800(Lcom/android/camera/HTCCamera;ZII)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera$51;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$16900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/HTCCamera$51;->val$orientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera$51;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, p0, Lcom/android/camera/HTCCamera$51;->this$0:Lcom/android/camera/HTCCamera;

    iget v5, p0, Lcom/android/camera/HTCCamera$51;->val$nMode:I

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->getPrefSceneType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->updateSceneIndicator(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
