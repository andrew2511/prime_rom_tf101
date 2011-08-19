.class public interface abstract Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;
.super Ljava/lang/Object;
.source "ScrubBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/ScrubBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScrubIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Section:",
        "Ljava/lang/Object;",
        "Item:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCalloutLabel(Landroid/content/res/Resources;IZ)Ljava/lang/CharSequence;
.end method

.method public abstract getGroup(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSection;"
        }
    .end annotation
.end method

.method public abstract getGroupCount()I
.end method

.method public abstract getGroupForItem(I)I
.end method

.method public abstract getItem(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getItemForGroup(I)I
.end method

.method public abstract getSummaryLabel(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
.end method

.method public abstract isGroupEnabled(I)Z
.end method
