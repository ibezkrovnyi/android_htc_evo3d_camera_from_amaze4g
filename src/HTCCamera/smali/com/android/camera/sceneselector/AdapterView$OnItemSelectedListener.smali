.class public interface abstract Lcom/android/camera/sceneselector/AdapterView$OnItemSelectedListener;
.super Ljava/lang/Object;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/sceneselector/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemSelectedListener"
.end annotation


# virtual methods
.method public abstract onItemSelected(Lcom/android/camera/sceneselector/AdapterView;Landroid/view/View;IJZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/sceneselector/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZ)V"
        }
    .end annotation
.end method

.method public abstract onNothingSelected(Lcom/android/camera/sceneselector/AdapterView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/sceneselector/AdapterView",
            "<*>;)V"
        }
    .end annotation
.end method
