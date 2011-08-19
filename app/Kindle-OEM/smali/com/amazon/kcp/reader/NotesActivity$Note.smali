.class Lcom/amazon/kcp/reader/NotesActivity$Note;
.super Ljava/lang/Object;
.source "NotesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/NotesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Note"
.end annotation


# instance fields
.field public final annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

.field public final annotationIndex:I


# direct methods
.method public constructor <init>(ILcom/amazon/kcp/reader/models/IAnnotation;)V
    .locals 0
    .parameter "annotationIndex"
    .parameter "annotation"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotationIndex:I

    .line 58
    iput-object p2, p0, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    .line 59
    return-void
.end method
