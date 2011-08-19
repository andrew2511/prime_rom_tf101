.class public Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;
.super Ljava/lang/Object;
.source "CustomAlertDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/CustomAlertDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomAlertDialogItem"
.end annotation


# instance fields
.field public drawableResId:I

.field public id:I

.field public nameResId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "id"
    .parameter "nameResId"
    .parameter "drawableResId"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;->id:I

    .line 24
    iput p2, p0, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;->nameResId:I

    .line 25
    iput p3, p0, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;->drawableResId:I

    .line 26
    return-void
.end method
