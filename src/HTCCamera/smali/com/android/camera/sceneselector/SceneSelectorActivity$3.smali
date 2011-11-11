.class Lcom/android/camera/sceneselector/SceneSelectorActivity$3;
.super Ljava/lang/Object;
.source "SceneSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/sceneselector/SceneSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/sceneselector/SceneSelectorActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/sceneselector/SceneSelectorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity$3;->this$0:Lcom/android/camera/sceneselector/SceneSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "center button is pressed. Scene pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity$3;->this$0:Lcom/android/camera/sceneselector/SceneSelectorActivity;

    invoke-static {v2}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->access$000(Lcom/android/camera/sceneselector/SceneSelectorActivity;)Lcom/android/camera/sceneselector/SceneMainGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/sceneselector/SceneMainGallery;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity$3;->this$0:Lcom/android/camera/sceneselector/SceneSelectorActivity;

    invoke-static {v0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->access$200(Lcom/android/camera/sceneselector/SceneSelectorActivity;)V

    return-void
.end method
