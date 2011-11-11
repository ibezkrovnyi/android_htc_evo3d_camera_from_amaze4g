.class Lcom/android/camera/sceneselector/SceneSelectorActivity$4;
.super Ljava/lang/Object;
.source "SceneSelectorActivity.java"

# interfaces
.implements Lcom/android/camera/sceneselector/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/sceneselector/SceneSelectorActivity;->initControls(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity$4;->this$0:Lcom/android/camera/sceneselector/SceneSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/android/camera/sceneselector/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/sceneselector/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity$4;->this$0:Lcom/android/camera/sceneselector/SceneSelectorActivity;

    invoke-static {v1}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->access$000(Lcom/android/camera/sceneselector/SceneSelectorActivity;)Lcom/android/camera/sceneselector/SceneMainGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-static {}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "center scene is clicked. Scene pos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity$4;->this$0:Lcom/android/camera/sceneselector/SceneSelectorActivity;

    invoke-static {v1}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->access$200(Lcom/android/camera/sceneselector/SceneSelectorActivity;)V

    :cond_0
    return-void
.end method
