.class Lcom/android/camera/OnScreenPreference$5;
.super Ljava/lang/Object;
.source "OnScreenPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/OnScreenPreference;->show_reset_dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/OnScreenPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/OnScreenPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "3s"

    const-string v6, "none"

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/RequestEvent;

    const-string v3, "Request.ResetToDefault"

    invoke-direct {v2, v3}, Lcom/android/camera/RequestEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    sput-boolean v4, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    invoke-static {v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->setDefault(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/HTCCamera;->setTurnOnTorch(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isWideScreen()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/OnScreenPreference;->access$402(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1, v4}, Lcom/android/camera/OnScreenPreference;->access$502(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1, v4}, Lcom/android/camera/OnScreenPreference;->access$602(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1, v4}, Lcom/android/camera/OnScreenPreference;->access$702(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1, v4}, Lcom/android/camera/OnScreenPreference;->access$802(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1, v4}, Lcom/android/camera/OnScreenPreference;->access$902(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1, v5}, Lcom/android/camera/OnScreenPreference;->access$1002(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1, v4}, Lcom/android/camera/OnScreenPreference;->access$1102(Lcom/android/camera/OnScreenPreference;Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v2, "3s"

    invoke-static {v1, v7}, Lcom/android/camera/OnScreenPreference;->access$1202(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHWShareButton()Z

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v2, "3s"

    invoke-static {v1, v7}, Lcom/android/camera/OnScreenPreference;->access$1202(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v2, "mpo"

    invoke-static {v1, v2}, Lcom/android/camera/OnScreenPreference;->access$1302(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v2, "3gpp"

    invoke-static {v1, v2}, Lcom/android/camera/OnScreenPreference;->access$1402(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getGpuEffectContr()Lcom/android/camera/GpuEffectController;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/GpuEffectController;->setISOString(Ljava/lang/String;)V

    const-string v1, "none"

    invoke-virtual {v0, v6, v5}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    const-string v1, "none"

    invoke-virtual {v0, v6, v4}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/camera/GpuEffectController;->notifyAdapterChanged()V

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v1

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$1500(Lcom/android/camera/OnScreenPreference;)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_record_with_audio"

    invoke-static {v1, v2, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->resetIndicatorLayout()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->resetForDOT()V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isSelfTimerOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_self_timer"

    const-string v3, "none"

    invoke-static {v1, v2, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/OneValueEvent;

    const-string v3, "SelfTimer.Changed"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_3
    sget-boolean v1, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$1700(Lcom/android/camera/OnScreenPreference;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_4
    const-string v1, "[ANALYTIC_com.android.camera]"

    const-string v2, "[reset_default]complete"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v2, "no_review"

    invoke-static {v1, v2}, Lcom/android/camera/OnScreenPreference;->access$1202(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$1600(Lcom/android/camera/OnScreenPreference;)V

    goto/16 :goto_1
.end method
