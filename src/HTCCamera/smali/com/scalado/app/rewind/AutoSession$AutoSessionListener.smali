.class public interface abstract Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
.super Ljava/lang/Object;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutoSessionListener"
.end annotation


# virtual methods
.method public abstract onAllImagesAdded()V
.end method

.method public abstract onError()V
.end method

.method public abstract onLTWCompleted(Lcom/scalado/base/Image;)V
.end method

.method public abstract onMergedImage(Lcom/scalado/base/Image;)V
.end method

.method public abstract onOutputDone(Ljava/lang/String;)V
.end method

.method public abstract onReplacementRects(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSourceImage(Lcom/scalado/base/Image;)V
.end method
