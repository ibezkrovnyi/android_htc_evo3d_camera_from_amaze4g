.class Lcom/android/camera/IntentManager$1;
.super Ljava/lang/Object;
.source "IntentManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/IntentManager;->setasIntentChooser()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/IntentManager;

.field final synthetic val$adapter:Lcom/android/camera/IntentManager$SetasAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/IntentManager;Lcom/android/camera/IntentManager$SetasAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/IntentManager$1;->this$0:Lcom/android/camera/IntentManager;

    iput-object p2, p0, Lcom/android/camera/IntentManager$1;->val$adapter:Lcom/android/camera/IntentManager$SetasAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/IntentManager$1;->val$adapter:Lcom/android/camera/IntentManager$SetasAdapter;

    invoke-virtual {v2, p2}, Lcom/android/camera/IntentManager$SetasAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/IntentManager$1;->this$0:Lcom/android/camera/IntentManager;

    invoke-static {v2}, Lcom/android/camera/IntentManager;->access$000(Lcom/android/camera/IntentManager;)Lcom/android/camera/CameraThread;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/IntentManager$1;->this$0:Lcom/android/camera/IntentManager;

    invoke-static {v2}, Lcom/android/camera/IntentManager;->access$000(Lcom/android/camera/IntentManager;)Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/IntentManager$1;->this$0:Lcom/android/camera/IntentManager;

    invoke-static {v2}, Lcom/android/camera/IntentManager;->access$000(Lcom/android/camera/IntentManager;)Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/IntentManager$1;->this$0:Lcom/android/camera/IntentManager;

    invoke-static {v2}, Lcom/android/camera/IntentManager;->access$000(Lcom/android/camera/IntentManager;)Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getStoredFileName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/camera/DCFRuler$fileFormat;->MPO:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2}, Lcom/android/camera/DCFRuler;->getFileExtension(Lcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/mpo"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/camera/IntentManager$1;->this$0:Lcom/android/camera/IntentManager;

    invoke-static {v2}, Lcom/android/camera/IntentManager;->access$100(Lcom/android/camera/IntentManager;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/jps"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/jpeg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
