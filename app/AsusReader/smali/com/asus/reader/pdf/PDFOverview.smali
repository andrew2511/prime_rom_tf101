.class public Lcom/asus/reader/pdf/PDFOverview;
.super Landroid/app/Activity;
.source "PDFOverview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/pdf/PDFOverview$ImageAdapter;
    }
.end annotation


# static fields
.field public static cache:Lcom/asus/reader/pdf/PDFCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/asus/reader/pdf/PDFOverview;->setContentView(I)V

    .line 32
    const v1, 0x7f0b0092

    invoke-virtual {p0, v1}, Lcom/asus/reader/pdf/PDFOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 33
    .local v0, g:Landroid/widget/GridView;
    new-instance v1, Lcom/asus/reader/pdf/PDFOverview$ImageAdapter;

    invoke-direct {v1, p0, p0}, Lcom/asus/reader/pdf/PDFOverview$ImageAdapter;-><init>(Lcom/asus/reader/pdf/PDFOverview;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFOverview;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 35
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 39
    :goto_0
    new-instance v1, Lcom/asus/reader/pdf/PDFOverview$1;

    invoke-direct {v1, p0}, Lcom/asus/reader/pdf/PDFOverview$1;-><init>(Lcom/asus/reader/pdf/PDFOverview;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    return-void

    .line 37
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method
