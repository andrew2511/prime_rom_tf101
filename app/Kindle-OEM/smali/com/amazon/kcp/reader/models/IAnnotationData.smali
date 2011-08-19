.class public interface abstract Lcom/amazon/kcp/reader/models/IAnnotationData;
.super Ljava/lang/Object;
.source "IAnnotationData.java"


# static fields
.field public static final ANNOTATION_ACTION_ADDED:I = 0x0

.field public static final ANNOTATION_ACTION_DELETED:I = 0x2

.field public static final ANNOTATION_ACTION_MODIFIED:I = 0x1

.field public static final ANNOTATION_TYPE_BOOKMARK:I = 0x0

.field public static final ANNOTATION_TYPE_CLIPPING:I = 0x4

.field public static final ANNOTATION_TYPE_COLLECTION_TAG:I = 0x5

.field public static final ANNOTATION_TYPE_HIGHLIGHT:I = 0x2

.field public static final ANNOTATION_TYPE_LAST_PAGE_READ:I = 0x3

.field public static final ANNOTATION_TYPE_NOTE:I = 0x1


# virtual methods
.method public abstract clone()Lcom/amazon/kcp/reader/models/IAnnotationData;
.end method

.method public abstract getAction()I
.end method

.method public abstract getBegin()I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getPos()I
.end method

.method public abstract getState()[B
.end method

.method public abstract getTime()J
.end method

.method public abstract getType()I
.end method

.method public abstract getUserText()Ljava/lang/String;
.end method
