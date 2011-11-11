.class Lcom/android/camera/HTCCamera$12;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;


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

    iput-object p1, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/android/camera/widget/SlidingMenu;Lcom/android/camera/widget/SlidingMenuItem;)V
    .locals 9

    const/16 v8, 0x25

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FlashRestriction;->getRestrictionHint()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v8, v5, v7, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07000a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070009

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/camera/widget/SlidingMenuItem;->getID()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    iget-object v4, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_flash_mode"

    aget-object v6, v3, v1

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x15

    aget-object v6, v3, v1

    invoke-static {v4, v5, v7, v7, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$13200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$13200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$13200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$13300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method
