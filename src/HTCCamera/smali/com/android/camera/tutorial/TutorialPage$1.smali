.class Lcom/android/camera/tutorial/TutorialPage$1;
.super Ljava/lang/Object;
.source "TutorialPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/tutorial/TutorialPage;->setupCommonUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/tutorial/TutorialPage;


# direct methods
.method constructor <init>(Lcom/android/camera/tutorial/TutorialPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/tutorial/TutorialPage$1;->this$0:Lcom/android/camera/tutorial/TutorialPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/tutorial/TutorialPage;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Done button click!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/tutorial/TutorialPage$1;->this$0:Lcom/android/camera/tutorial/TutorialPage;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/tutorial/TutorialPage;->setResult(I)V

    iget-object v0, p0, Lcom/android/camera/tutorial/TutorialPage$1;->this$0:Lcom/android/camera/tutorial/TutorialPage;

    invoke-virtual {v0}, Lcom/android/camera/tutorial/TutorialPage;->finish()V

    return-void
.end method
