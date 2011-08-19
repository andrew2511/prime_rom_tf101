.class public Lcom/asus/vibe2/debug/RegionSelector;
.super Landroid/app/Activity;
.source "RegionSelector.java"


# static fields
.field private static final REGIONS:[Ljava/lang/String;


# instance fields
.field private mList:Landroid/widget/ListView;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TW"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ES"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "JP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "NL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CH"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "AT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AU"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RU"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "KR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/vibe2/debug/RegionSelector;->REGIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe2/debug/RegionSelector;->mList:Landroid/widget/ListView;

    .line 46
    new-instance v0, Lcom/asus/vibe2/debug/RegionSelector$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/debug/RegionSelector$1;-><init>(Lcom/asus/vibe2/debug/RegionSelector;)V

    iput-object v0, p0, Lcom/asus/vibe2/debug/RegionSelector;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/vibe2/debug/RegionSelector;->mList:Landroid/widget/ListView;

    .line 29
    iget-object v0, p0, Lcom/asus/vibe2/debug/RegionSelector;->mList:Landroid/widget/ListView;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 30
    iget-object v0, p0, Lcom/asus/vibe2/debug/RegionSelector;->mList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/debug/RegionSelector;->setContentView(Landroid/view/View;)V

    .line 31
    invoke-virtual {p0}, Lcom/asus/vibe2/debug/RegionSelector;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 32
    invoke-virtual {p0}, Lcom/asus/vibe2/debug/RegionSelector;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/vibe2/debug/RegionSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    iget-object v0, p0, Lcom/asus/vibe2/debug/RegionSelector;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/asus/vibe2/debug/RegionSelector;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/asus/vibe2/debug/RegionSelector;->mList:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x109000a

    sget-object v3, Lcom/asus/vibe2/debug/RegionSelector;->REGIONS:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/asus/vibe2/debug/RegionSelector;->finish()V

    .line 43
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
