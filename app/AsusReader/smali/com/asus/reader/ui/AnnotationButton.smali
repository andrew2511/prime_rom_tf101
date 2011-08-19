.class public Lcom/asus/reader/ui/AnnotationButton;
.super Landroid/widget/ImageButton;
.source "AnnotationButton.java"


# instance fields
.field public mEnd:Ljava/lang/String;

.field public mStart:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "start_location"
    .parameter "end_location"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object p2, p0, Lcom/asus/reader/ui/AnnotationButton;->mStart:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/asus/reader/ui/AnnotationButton;->mEnd:Ljava/lang/String;

    .line 14
    return-void
.end method
