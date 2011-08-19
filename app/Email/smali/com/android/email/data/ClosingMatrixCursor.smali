.class public Lcom/android/email/data/ClosingMatrixCursor;
.super Landroid/database/MatrixCursor;
.source "ClosingMatrixCursor.java"


# instance fields
.field private final mInnerCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0
    .parameter "columnNames"
    .parameter "innerCursor"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/android/email/data/ClosingMatrixCursor;->mInnerCursor:Landroid/database/Cursor;

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/email/data/ClosingMatrixCursor;->mInnerCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/email/data/ClosingMatrixCursor;->mInnerCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_0
    invoke-super {p0}, Landroid/database/MatrixCursor;->close()V

    .line 41
    return-void
.end method
