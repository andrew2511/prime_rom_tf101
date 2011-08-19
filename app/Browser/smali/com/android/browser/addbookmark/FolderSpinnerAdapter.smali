.class public Lcom/android/browser/addbookmark/FolderSpinnerAdapter;
.super Ljava/lang/Object;
.source "FolderSpinnerAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field private mIncludeHomeScreen:Z

.field private mIncludesRecentFolder:Z

.field private mRecentFolderId:J

.field private mRecentFolderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "includeHomeScreen"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludeHomeScreen:Z

    .line 49
    return-void
.end method


# virtual methods
.method public addRecentFolder(JLjava/lang/String;)V
    .locals 1
    .parameter "folderId"
    .parameter "folderName"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludesRecentFolder:Z

    .line 53
    iput-wide p1, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mRecentFolderId:J

    .line 54
    iput-object p3, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mRecentFolderName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x2

    .line 112
    .local v0, count:I
    iget-boolean v1, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludeHomeScreen:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 113
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludesRecentFolder:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 114
    :cond_1
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 63
    iget-boolean v6, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludeHomeScreen:Z

    if-nez v6, :cond_0

    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 66
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 82
    const/4 v4, 0x0

    .line 83
    .local v4, labelResource:I
    const/4 v2, 0x0

    .line 87
    .local v2, drawableResource:I
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 89
    .local v3, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f040002

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 90
    .local v5, textView:Landroid/widget/TextView;
    const/4 v6, 0x3

    if-ne p1, v6, :cond_1

    .line 91
    iget-object v6, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mRecentFolderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-object v5

    .line 68
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #drawableResource:I
    .end local v3           #factory:Landroid/view/LayoutInflater;
    .end local v4           #labelResource:I
    .end local v5           #textView:Landroid/widget/TextView;
    :pswitch_0
    const v4, 0x7f090041

    .line 69
    .restart local v4       #labelResource:I
    const v2, 0x7f02003f

    .line 70
    .restart local v2       #drawableResource:I
    goto :goto_0

    .line 72
    .end local v2           #drawableResource:I
    .end local v4           #labelResource:I
    :pswitch_1
    const v4, 0x7f090040

    .line 73
    .restart local v4       #labelResource:I
    const v2, 0x7f02002a

    .line 74
    .restart local v2       #drawableResource:I
    goto :goto_0

    .line 78
    .end local v2           #drawableResource:I
    .end local v4           #labelResource:I
    :pswitch_2
    const v4, 0x7f090042

    .line 79
    .restart local v4       #labelResource:I
    const v2, 0x7f020038

    .line 80
    .restart local v2       #drawableResource:I
    goto :goto_0

    .line 93
    .restart local v0       #context:Landroid/content/Context;
    .restart local v3       #factory:Landroid/view/LayoutInflater;
    .restart local v5       #textView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .parameter "position"

    .prologue
    .line 124
    int-to-long v0, p1

    .line 125
    .local v0, id:J
    iget-boolean v2, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludeHomeScreen:Z

    if-nez v2, :cond_0

    .line 126
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 128
    :cond_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 144
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public recentFolderId()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mRecentFolderId:J

    return-wide v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 103
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 107
    return-void
.end method
