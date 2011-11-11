.class Lcom/android/camera/tutorial/TutorialPage$2;
.super Ljava/lang/Object;
.source "TutorialPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/tutorial/TutorialPage;
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

    iput-object p1, p0, Lcom/android/camera/tutorial/TutorialPage$2;->this$0:Lcom/android/camera/tutorial/TutorialPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/android/camera/tutorial/TutorialPage;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Demo button click!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage$3;->$SwitchMap$com$android$camera$tutorial$TutorialPage$TutorialMode:[I

    iget-object v1, p0, Lcom/android/camera/tutorial/TutorialPage$2;->this$0:Lcom/android/camera/tutorial/TutorialPage;

    invoke-static {v1}, Lcom/android/camera/tutorial/TutorialPage;->access$100(Lcom/android/camera/tutorial/TutorialPage;)Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/tutorial/TutorialPage$TutorialMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/tutorial/TutorialPage$2;->this$0:Lcom/android/camera/tutorial/TutorialPage;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/tutorial/TutorialPage$2;->this$0:Lcom/android/camera/tutorial/TutorialPage;

    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Lcom/android/camera/tutorial/TutorialPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/tutorial/youtubeLauncher/YoutubeLauncher;->launch(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
