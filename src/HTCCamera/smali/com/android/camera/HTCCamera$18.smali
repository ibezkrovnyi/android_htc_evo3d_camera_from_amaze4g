.class Lcom/android/camera/HTCCamera$18;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string v2, "HTCCamera"

    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->closeAllExtensionMenus()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    iget v0, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "HTCCamera"

    const-string v0, "press effect button when focusing, cancel focus"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()V

    const-string v0, "HTCCamera"

    const-string v0, "UnBlock Capture UI - press effect button and cancel focus"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1700()Z

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_0
    return-void

    :cond_1
    const-string v0, "HTCCamera"

    const-string v0, "press effect button when focusing, but device can\'t cancel focus"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/Panel;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$13700(Lcom/android/camera/HTCCamera;)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/Panel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/GpuEffectController;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/GpuEffectController;->openEffectMenu(ZZ)V

    const-string v0, "HTCCamera"

    const-string v0, "mEffectPanel.setOpen(false"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/GpuEffectController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/GpuEffectController;->openEffectMenu(ZZ)V

    const-string v0, "HTCCamera"

    const-string v0, "mEffectPanel.setOpen(true"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
