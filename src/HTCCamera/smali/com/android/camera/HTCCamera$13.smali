.class Lcom/android/camera/HTCCamera$13;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;


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

    iput-object p1, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosing(Lcom/android/camera/widget/SlidingMenu;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$13300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$13300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    const v2, 0x7f0a0002

    const v3, 0x7f0200cf

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onOpening(Lcom/android/camera/widget/SlidingMenu;)V
    .locals 6

    iget-object v4, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v4, p1}, Lcom/android/camera/HTCCamera;->access$13100(Lcom/android/camera/HTCCamera;Lcom/android/camera/widget/SlidingMenu;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07000a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_flash_mode"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    array-length v4, v3

    const/4 v5, 0x1

    sub-int v1, v4, v5

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/camera/widget/SlidingMenu;->getItem(I)Lcom/android/camera/widget/SlidingMenuItem;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/widget/SlidingMenuItem;->highlight(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$13300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$13300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    const v5, 0x7f02010e

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method
