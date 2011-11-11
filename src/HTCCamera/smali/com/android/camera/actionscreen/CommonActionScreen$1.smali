.class Lcom/android/camera/actionscreen/CommonActionScreen$1;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actionscreen/CommonActionScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/CommonActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$1;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$1;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$002(Lcom/android/camera/actionscreen/CommonActionScreen;I)I

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$1;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-static {v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$100(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    return-void
.end method
