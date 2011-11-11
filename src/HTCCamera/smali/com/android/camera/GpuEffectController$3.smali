.class Lcom/android/camera/GpuEffectController$3;
.super Ljava/lang/Object;
.source "GpuEffectController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/GpuEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/GpuEffectController;


# direct methods
.method constructor <init>(Lcom/android/camera/GpuEffectController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/GpuEffectController$3;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/16 v3, 0x3b

    const-string v2, "GpuEffectController"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GpuEffectController"

    const-string v0, "EffectList ACTION_DOWN"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController$3;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v0}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "GpuEffectController"

    const-string v0, "EffectList ACTION_UP"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController$3;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v0}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController$3;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v0}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v3, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
