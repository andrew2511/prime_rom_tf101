.class public interface abstract Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;
.super Ljava/lang/Object;
.source "MediaLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/widgets/MediaLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaLayoutListener"
.end annotation


# virtual methods
.method public abstract onAddMediaItem(Ljava/lang/String;)V
.end method

.method public abstract onRequestMovePlayhead(JZ)V
.end method

.method public abstract onRequestScrollBy(IZ)V
.end method

.method public abstract onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V
.end method

.method public abstract onTrimMediaItemBegin(Lcom/android/videoeditor/service/MovieMediaItem;)V
.end method

.method public abstract onTrimMediaItemEnd(Lcom/android/videoeditor/service/MovieMediaItem;J)V
.end method
