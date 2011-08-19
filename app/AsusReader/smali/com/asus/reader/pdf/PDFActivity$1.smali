.class Lcom/asus/reader/pdf/PDFActivity$1;
.super Ljava/lang/Object;
.source "PDFActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/pdf/PDFActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/pdf/PDFActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/pdf/PDFActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity$1;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$1;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFActivity;->finish()V

    .line 170
    return-void
.end method
