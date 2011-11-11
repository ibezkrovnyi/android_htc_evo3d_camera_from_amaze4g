.class final Lcom/android/camera/FileUtility$1;
.super Ljava/lang/Object;
.source "FileUtility.java"

# interfaces
.implements Lcom/android/camera/FileUtility$FileEnumerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/FileUtility;->backupDirectory(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$backupDirPrefix:Ljava/lang/String;

.field final synthetic val$backupDirPrefixLength:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/camera/FileUtility$1;->val$backupDirPrefixLength:I

    iput-object p2, p0, Lcom/android/camera/FileUtility$1;->val$backupDirPrefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/android/camera/FileUtility$1;->val$backupDirPrefixLength:I

    if-gt v4, v5, :cond_0

    move v4, v6

    :goto_0
    return v4

    :cond_0
    iget v4, p0, Lcom/android/camera/FileUtility$1;->val$backupDirPrefixLength:I

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/FileUtility$1;->val$backupDirPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    :try_start_0
    iget v4, p0, Lcom/android/camera/FileUtility$1;->val$backupDirPrefixLength:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    check-cast p2, [Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    aget-object p0, v3, v7

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v2, v4, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    :cond_2
    move v4, v6

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v1, v4

    move v4, v6

    goto :goto_0
.end method
