.class public Lcom/layar/adapters/ContactChooserAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContactChooserAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/ContactChooserAdapter$ContactAddBar;,
        Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/layar/reflect/EmailChooser$ContactInfo;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactChooserAdapter"


# instance fields
.field alphaIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/reflect/EmailChooser$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private correctionPos:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mListener:Landroid/view/View$OnClickListener;

.field private mTextView:Landroid/widget/TextView;

.field private sections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V
    .locals 8
    .parameter "context"
    .parameter
    .parameter "listner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/reflect/EmailChooser$ContactInfo;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/reflect/EmailChooser$ContactInfo;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 35
    invoke-direct {p0, p1, v6, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    iput v6, p0, Lcom/layar/adapters/ContactChooserAdapter;->correctionPos:I

    .line 36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/layar/adapters/ContactChooserAdapter;->alphaIndexer:Ljava/util/HashMap;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/adapters/ContactChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object p2, p0, Lcom/layar/adapters/ContactChooserAdapter;->contacts:Ljava/util/ArrayList;

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, i:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/layar/adapters/ContactChooserAdapter;->sections:[Ljava/lang/String;

    .line 41
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    :cond_0
    iput-object p3, p0, Lcom/layar/adapters/ContactChooserAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 56
    return-void

    .line 42
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/reflect/EmailChooser$ContactInfo;

    .line 43
    .local v0, contact:Lcom/layar/reflect/EmailChooser$ContactInfo;
    iget-object v3, v0, Lcom/layar/reflect/EmailChooser$ContactInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 44
    iget-object v3, p0, Lcom/layar/adapters/ContactChooserAdapter;->alphaIndexer:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/layar/reflect/EmailChooser$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v3, p0, Lcom/layar/adapters/ContactChooserAdapter;->sections:[Ljava/lang/String;

    iget-object v4, v0, Lcom/layar/reflect/EmailChooser$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 50
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_2
    iget-object v3, p0, Lcom/layar/adapters/ContactChooserAdapter;->alphaIndexer:Ljava/util/HashMap;

    const-string v4, "~"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v3, p0, Lcom/layar/adapters/ContactChooserAdapter;->sections:[Ljava/lang/String;

    const-string v4, "~"

    aput-object v4, v3, v1

    goto :goto_1
.end method


# virtual methods
.method public correctPosition()V
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/layar/adapters/ContactChooserAdapter;->correctionPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/layar/adapters/ContactChooserAdapter;->correctionPos:I

    .line 60
    return-void
.end method

.method public getChecked()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public getEmailText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/layar/adapters/ContactChooserAdapter;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getItem(I)Lcom/layar/reflect/EmailChooser$ContactInfo;
    .locals 0
    .parameter "position"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/reflect/EmailChooser$ContactInfo;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/layar/adapters/ContactChooserAdapter;->getItem(I)Lcom/layar/reflect/EmailChooser$ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "section"

    .prologue
    .line 130
    iget v0, p0, Lcom/layar/adapters/ContactChooserAdapter;->correctionPos:I

    if-ge p1, v0, :cond_0

    .line 131
    const/4 p1, 0x0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/layar/adapters/ContactChooserAdapter;->alphaIndexer:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/layar/adapters/ContactChooserAdapter;->sections:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/layar/adapters/ContactChooserAdapter;->sections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-virtual {p0, p1}, Lcom/layar/adapters/ContactChooserAdapter;->getItem(I)Lcom/layar/reflect/EmailChooser$ContactInfo;

    move-result-object v1

    .line 77
    .local v1, contact:Lcom/layar/reflect/EmailChooser$ContactInfo;
    iget-object v3, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/layar/adapters/ContactChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v4, 0x7f03

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v0, Lcom/layar/adapters/ContactChooserAdapter$ContactAddBar;

    invoke-direct {v0}, Lcom/layar/adapters/ContactChooserAdapter$ContactAddBar;-><init>()V

    .line 80
    .local v0, addViewHolder:Lcom/layar/adapters/ContactChooserAdapter$ContactAddBar;
    const v3, 0x7f070004

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v0, Lcom/layar/adapters/ContactChooserAdapter$ContactAddBar;->addEmail:Landroid/widget/Button;

    .line 81
    const v3, 0x7f070003

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/layar/adapters/ContactChooserAdapter$ContactAddBar;->newContact:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/layar/adapters/ContactChooserAdapter;->mTextView:Landroid/widget/TextView;

    .line 82
    iget-object v3, v0, Lcom/layar/adapters/ContactChooserAdapter$ContactAddBar;->addEmail:Landroid/widget/Button;

    iget-object v4, p0, Lcom/layar/adapters/ContactChooserAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .end local v0           #addViewHolder:Lcom/layar/adapters/ContactChooserAdapter$ContactAddBar;
    .end local p0
    :goto_0
    return-object p2

    .line 84
    .restart local p0
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 85
    :cond_1
    iget-object v3, p0, Lcom/layar/adapters/ContactChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030012

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 86
    new-instance v2, Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;

    invoke-direct {v2}, Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;-><init>()V

    .line 87
    .local v2, viewHolder:Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;
    const v3, 0x7f070044

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, v2, Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;->contactListItem:Landroid/widget/LinearLayout;

    .line 88
    const v3, 0x7f070045

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v2, Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;->contactName:Landroid/widget/TextView;

    .line 89
    const v3, 0x7f070046

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    iput-object p0, v2, Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;->contactCheckbox:Landroid/widget/CheckBox;

    .line 91
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_1
    iget-object v3, v2, Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;->contactListItem:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 97
    iget-object v3, v2, Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;->contactCheckbox:Landroid/widget/CheckBox;

    iget-boolean v4, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->isChecked:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 99
    iget-object v3, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 100
    iget-object v3, v2, Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;->contactName:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    .end local v2           #viewHolder:Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;
    .restart local p0
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;

    .restart local v2       #viewHolder:Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;
    goto :goto_1

    .line 102
    .end local p0
    :cond_3
    iget-object v3, v2, Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;->contactName:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
