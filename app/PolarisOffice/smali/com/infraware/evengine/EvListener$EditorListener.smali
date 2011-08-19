.class public interface abstract Lcom/infraware/evengine/EvListener$EditorListener;
.super Ljava/lang/Object;
.source "EvListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/evengine/EvListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditorListener"
.end annotation


# virtual methods
.method public abstract OnBookMarkEditorMode()V
.end method

.method public abstract OnEditCopyCut(ILjava/lang/String;)V
.end method

.method public abstract OnEditOrViewMode(II)V
.end method

.method public abstract OnHidAction(I)V
.end method

.method public abstract OnIMEInsertMode()V
.end method

.method public abstract OnInsertTableMode(I)V
.end method

.method public abstract OnNewDoc(I)V
.end method

.method public abstract OnObjectPoints(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
.end method

.method public abstract OnSaveDoc(I)V
.end method

.method public abstract OnUndoOrRedo(III)V
.end method

.method public abstract getClipBoardData()Ljava/lang/String;
.end method

.method public abstract hasClipBoardData()I
.end method

.method public abstract setClipBoardData(Ljava/lang/String;)V
.end method
