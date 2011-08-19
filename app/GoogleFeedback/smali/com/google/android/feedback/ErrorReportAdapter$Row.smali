.class Lcom/google/android/feedback/ErrorReportAdapter$Row;
.super Ljava/lang/Object;
.source "ErrorReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feedback/ErrorReportAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Row"
.end annotation


# instance fields
.field public convertType:I

.field public field:Ljava/lang/reflect/Field;

.field public labelResId:I

.field public report:Ljava/lang/Object;

.field public viewerActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 6
    .parameter "labelResId"

    .prologue
    const/4 v2, 0x0

    .line 101
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/feedback/ErrorReportAdapter$Row;-><init>(ILjava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;I)V

    .line 102
    return-void
.end method

.method constructor <init>(ILjava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;I)V
    .locals 0
    .parameter "labelResId"
    .parameter "report"
    .parameter "field"
    .parameter
    .parameter "convertType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p4, viewerActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->labelResId:I

    .line 109
    iput-object p2, p0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    .line 110
    iput-object p3, p0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    .line 111
    iput-object p4, p0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->viewerActivity:Ljava/lang/Class;

    .line 112
    iput p5, p0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->convertType:I

    .line 113
    return-void
.end method


# virtual methods
.method isExpandable()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->viewerActivity:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHeader()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
