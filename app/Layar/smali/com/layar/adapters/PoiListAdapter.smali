.class public Lcom/layar/adapters/PoiListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PoiListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/PoiListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/layar/data/POI;",
        ">;"
    }
.end annotation


# instance fields
.field private clickListner:Landroid/view/View$OnClickListener;

.field private longClickListner:Landroid/view/View$OnLongClickListener;

.field private final mImageCache:Lcom/layar/data/ImageCache;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private multiLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

.field private singleLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/layar/LayarListActivity;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"
    .parameter "longListener"

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/PoiListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 47
    invoke-static {}, Lcom/layar/data/ImageCache;->getInstance()Lcom/layar/data/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/PoiListAdapter;->mImageCache:Lcom/layar/data/ImageCache;

    .line 49
    iput-object p2, p0, Lcom/layar/adapters/PoiListAdapter;->clickListner:Landroid/view/View$OnClickListener;

    .line 50
    iput-object p3, p0, Lcom/layar/adapters/PoiListAdapter;->longClickListner:Landroid/view/View$OnLongClickListener;

    .line 51
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/layar/adapters/PoiListAdapter;->singleLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    iget-object v0, p0, Lcom/layar/adapters/PoiListAdapter;->singleLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/layar/adapters/PoiListAdapter;->multiLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    iget-object v0, p0, Lcom/layar/adapters/PoiListAdapter;->multiLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 55
    return-void
.end method


# virtual methods
.method public fitLines(Lcom/layar/adapters/PoiListAdapter$ViewHolder;)V
    .locals 7
    .parameter "holder"

    .prologue
    .line 58
    iget-object v4, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 59
    .local v2, paint:Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v4, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->poi:Lcom/layar/data/POI;

    iget-object v4, v4, Lcom/layar/data/POI;->title:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->poi:Lcom/layar/data/POI;

    iget-object v6, v6, Lcom/layar/data/POI;->title:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 61
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v5

    .line 65
    .local v0, length:I
    const/16 v1, 0x109

    .line 66
    .local v1, max_width:I
    iget-object v4, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->poi:Lcom/layar/data/POI;

    iget-object v4, v4, Lcom/layar/data/POI;->imageURL:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    iget-object v5, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->poi:Lcom/layar/data/POI;

    iget-object v5, v5, Lcom/layar/data/POI;->imageURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    add-int/lit8 v1, v1, -0x50

    .line 69
    :cond_0
    if-le v0, v1, :cond_1

    .line 70
    iget-object v4, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/layar/adapters/PoiListAdapter;->multiLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v4, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->line3:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/layar/adapters/PoiListAdapter;->multiLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v4, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->line4:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/layar/adapters/PoiListAdapter;->multiLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v4, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->attribution:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/layar/adapters/PoiListAdapter;->multiLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v4, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/layar/adapters/PoiListAdapter;->singleLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v4, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->line3:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/layar/adapters/PoiListAdapter;->singleLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v4, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->line4:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/layar/adapters/PoiListAdapter;->singleLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v4, p1, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->attribution:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/layar/adapters/PoiListAdapter;->singleLineTitleParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 86
    if-nez p2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/layar/adapters/PoiListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030028

    invoke-virtual {v2, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 90
    new-instance v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/layar/adapters/PoiListAdapter$ViewHolder;-><init>(Lcom/layar/adapters/PoiListAdapter$ViewHolder;)V

    .line 92
    .local v0, holder:Lcom/layar/adapters/PoiListAdapter$ViewHolder;
    const v2, 0x7f07006f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 91
    iput-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->details:Landroid/view/ViewGroup;

    .line 94
    const v2, 0x7f07000a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 93
    iput-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->launchArea:Landroid/view/ViewGroup;

    .line 96
    const v2, 0x7f070029

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 95
    iput-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 98
    const v2, 0x7f070040

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 97
    iput-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 100
    const v2, 0x7f07000c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 99
    iput-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f07002b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    iput-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f07002c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    iput-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 106
    const v2, 0x7f07002d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    iput-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->line3:Landroid/widget/TextView;

    .line 108
    const v2, 0x7f07002e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    iput-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->line4:Landroid/widget/TextView;

    .line 110
    const v2, 0x7f07002f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 109
    iput-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->attribution:Landroid/widget/TextView;

    .line 112
    iget-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->launchArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 113
    iget-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->launchArea:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/layar/adapters/PoiListAdapter;->clickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->details:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/layar/adapters/PoiListAdapter;->clickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->details:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/layar/adapters/PoiListAdapter;->longClickListner:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    :goto_0
    invoke-virtual {p0, p1}, Lcom/layar/adapters/PoiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/data/POI;

    .line 123
    .local v1, poi:Lcom/layar/data/POI;
    iget-object v2, p0, Lcom/layar/adapters/PoiListAdapter;->mImageCache:Lcom/layar/data/ImageCache;

    iget-object v3, v1, Lcom/layar/data/POI;->imageURL:Ljava/lang/String;

    iget-object v4, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3, v4, v5}, Lcom/layar/data/ImageCache;->setPoiImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 125
    invoke-virtual {p2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 126
    invoke-virtual {p2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 127
    invoke-virtual {p2, v6}, Landroid/view/View;->setLongClickable(Z)V

    .line 129
    iget-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/layar/data/POI;->title:Ljava/lang/String;

    iget v4, v1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v3, v4}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/layar/data/POI;->line2:Ljava/lang/String;

    iget v4, v1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v3, v4}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->line3:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/layar/data/POI;->line3:Ljava/lang/String;

    iget v4, v1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v3, v4}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->line4:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/layar/data/POI;->line4:Ljava/lang/String;

    iget v4, v1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v3, v4}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->attribution:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/layar/data/POI;->attribution:Ljava/lang/String;

    iget v4, v1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v3, v4}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    iget v3, v1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v3}, Lcom/layar/util/Util;->getDistanceTextLong(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iput-object v1, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->poi:Lcom/layar/data/POI;

    .line 137
    iget-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->details:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 138
    iget-object v2, v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;->launchArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/layar/adapters/PoiListAdapter;->fitLines(Lcom/layar/adapters/PoiListAdapter$ViewHolder;)V

    .line 141
    return-object p2

    .line 119
    .end local v0           #holder:Lcom/layar/adapters/PoiListAdapter$ViewHolder;
    .end local v1           #poi:Lcom/layar/data/POI;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/adapters/PoiListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/layar/adapters/PoiListAdapter$ViewHolder;
    goto :goto_0
.end method
