.class Lcom/android/camera/IntentManager$CustomAppInfo;
.super Ljava/lang/Object;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/IntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomAppInfo"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field fake:Ljava/lang/Boolean;

.field resolve:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lcom/android/camera/IntentManager$CustomAppInfo;->action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/IntentManager$CustomAppInfo;->fake:Ljava/lang/Boolean;

    return-void
.end method
