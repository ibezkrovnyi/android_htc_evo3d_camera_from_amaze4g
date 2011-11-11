.class Lcom/android/camera/MenuHandler$2;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHandler;->initMenuHandler(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Landroid/view/View;Lcom/android/camera/GpuEffectController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MenuHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/MenuHandler$2;->this$0:Lcom/android/camera/MenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler$2;->this$0:Lcom/android/camera/MenuHandler;

    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$100(Lcom/android/camera/MenuHandler;)Landroid/view/View;

    return-void
.end method
