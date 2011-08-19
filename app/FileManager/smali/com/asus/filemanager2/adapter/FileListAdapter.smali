.class public Lcom/asus/filemanager2/adapter/FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager2/adapter/FileListAdapter$1;,
        Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/asus/filemanager2/activity/FileManagerActivity;

.field private mFileArray:[Lcom/asus/filemanager/main/VFile;

.field private mItemIcon:Lcom/asus/filemanager/adapter/ItemIcon;


# direct methods
.method public constructor <init>(Lcom/asus/filemanager2/activity/FileManagerActivity;[Lcom/asus/filemanager/main/VFile;Lcom/asus/filemanager/adapter/ThumbnailDB;)V
    .locals 1
    .parameter "activity"
    .parameter "files"
    .parameter "thumbnailDB"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mActivity:Lcom/asus/filemanager2/activity/FileManagerActivity;

    .line 49
    iput-object p2, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    .line 50
    new-instance v0, Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-direct {v0, p3, p1}, Lcom/asus/filemanager/adapter/ItemIcon;-><init>(Lcom/asus/filemanager/adapter/ThumbnailDB;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mItemIcon:Lcom/asus/filemanager/adapter/ItemIcon;

    .line 51
    return-void
.end method

.method private udateCheck([Lcom/asus/filemanager/main/VFile;)[Lcom/asus/filemanager/main/VFile;
    .locals 5
    .parameter "files"

    .prologue
    .line 163
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 164
    const/4 v0, -0x1

    .line 165
    .local v0, find:I
    iget-object v2, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v3, p1, v1

    new-instance v4, Lcom/asus/filemanager2/sort/SortAbsolutePath;

    invoke-direct {v4}, Lcom/asus/filemanager2/sort/SortAbsolutePath;-><init>()V

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 166
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 167
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/asus/filemanager/main/VFile;->GetChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/asus/filemanager/main/VFile;->SetChecked(Z)V

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0           #find:I
    :cond_1
    return-object p1
.end method


# virtual methods
.method public clearItemsSelected()V
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    if-eqz v1, :cond_0

    .line 233
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/asus/filemanager/main/VFile;->SetChecked(Z)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedCount()I
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, count:I
    iget-object v2, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    if-eqz v2, :cond_1

    .line 222
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/asus/filemanager/main/VFile;->GetChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    add-int/lit8 v0, v0, 0x1

    .line 222
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1           #i:I
    :cond_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 72
    if-nez p2, :cond_7

    .line 73
    iget-object v4, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mActivity:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030004

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 74
    new-instance v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;

    invoke-direct {v1, p0, v6}, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;-><init>(Lcom/asus/filemanager2/adapter/FileListAdapter;Lcom/asus/filemanager2/adapter/FileListAdapter$1;)V

    .line 75
    .local v1, holder:Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;
    const v4, 0x7f080010

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 76
    const v4, 0x7f080011

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->container:Landroid/view/View;

    .line 77
    const v4, 0x7f080012

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 78
    const v4, 0x7f080013

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 79
    const v4, 0x7f080015

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 80
    const v4, 0x7f080014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 81
    const v4, 0x7f080016

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->action:Landroid/widget/ImageButton;

    .line 82
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    :goto_0
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v4, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    array-length v4, v4

    if-ge p1, v4, :cond_6

    .line 92
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    if-eqz v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mActivity:Lcom/asus/filemanager2/activity/FileManagerActivity;

    iget-boolean v4, v4, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIsSelector:Z

    if-eqz v4, :cond_8

    .line 94
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    :cond_0
    :goto_1
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->container:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 103
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_1
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 115
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v4, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mItemIcon:Lcom/asus/filemanager/adapter/ItemIcon;

    iget-object v5, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v5, v5, p1

    iget-object v6, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v6, v7}, Lcom/asus/filemanager/adapter/ItemIcon;->SetIcon(Lcom/asus/filemanager/main/VFile;Landroid/widget/ImageView;Z)V

    .line 119
    :cond_2
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 120
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/asus/filemanager/main/VFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_3
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 125
    iget-object v4, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mActivity:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v4}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 126
    .local v2, shortDateFormat:Ljava/text/DateFormat;
    iget-object v4, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mActivity:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v4}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 127
    .local v3, shortTimeFormat:Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    iget-object v4, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/asus/filemanager/main/VFile;->lastModified()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 128
    .local v0, date:Ljava/util/Date;
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #shortDateFormat:Ljava/text/DateFormat;
    .end local v3           #shortTimeFormat:Ljava/text/DateFormat;
    :cond_4
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->size:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 133
    iget-object v4, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_9

    .line 134
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->size:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/asus/filemanager/main/VFile;->length()J

    move-result-wide v5

    invoke-static {v5, v6, v7}, Lcom/asus/filemanager/edit/EditUtil;->Bytes2String(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_5
    :goto_2
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->action:Landroid/widget/ImageButton;

    if-eqz v4, :cond_6

    .line 142
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->action:Landroid/widget/ImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 146
    :cond_6
    return-object p2

    .line 84
    .end local v1           #holder:Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 96
    :cond_8
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 97
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/asus/filemanager/main/VFile;->GetChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 138
    :cond_9
    iget-object v4, v1, Lcom/asus/filemanager2/adapter/FileListAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public isItemsSelected()Z
    .locals 3

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, isItemSelected:Z
    iget-object v2, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    if-eqz v2, :cond_0

    .line 209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/asus/filemanager/main/VFile;->GetChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    const/4 v1, 0x1

    .line 216
    .end local v0           #i:I
    :cond_0
    return v1

    .line 209
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 204
    .end local p1
    :goto_0
    return-void

    .line 179
    .restart local p1
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 180
    .local v0, checkPosition:I
    const-string v1, "FileListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containerView:get Postion :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 182
    :cond_0
    const-string v1, "FileListAdapter"

    const-string v2, "mFileArray == null || mFileArray[checkPosition] == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mActivity:Lcom/asus/filemanager2/activity/FileManagerActivity;

    iget-object v2, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/asus/filemanager2/activity/FileManagerActivity;->StartScanFile(Lcom/asus/filemanager/main/VFile;I)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mActivity:Lcom/asus/filemanager2/activity/FileManagerActivity;

    iget-object v2, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/asus/filemanager2/activity/FileManagerActivity;->OpenFile(Lcom/asus/filemanager/main/VFile;)V

    goto :goto_0

    .line 193
    .end local v0           #checkPosition:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 194
    .restart local v0       #checkPosition:I
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    .line 195
    :cond_3
    const-string v1, "FileListAdapter"

    const-string v2, "mFileArray == null || mFileArray[checkPosition] == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_4
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v1, v1, v0

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/asus/filemanager/main/VFile;->SetChecked(Z)V

    .line 199
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mActivity:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->updateEditMode()V

    goto/16 :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x7f080010
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSelectAll()V
    .locals 3

    .prologue
    .line 240
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    if-eqz v1, :cond_0

    .line 241
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/asus/filemanager/main/VFile;->SetChecked(Z)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/asus/filemanager2/adapter/FileListAdapter;->notifyDataSetInvalidated()V

    .line 247
    return-void
.end method

.method public updateAdapter([Lcom/asus/filemanager/main/VFile;Z)V
    .locals 1
    .parameter "files"
    .parameter "forceUpdate"

    .prologue
    .line 150
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lcom/asus/filemanager2/adapter/FileListAdapter;->udateCheck([Lcom/asus/filemanager/main/VFile;)[Lcom/asus/filemanager/main/VFile;

    move-result-object p1

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/asus/filemanager2/adapter/FileListAdapter;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    .line 154
    if-eqz p2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/asus/filemanager2/adapter/FileListAdapter;->notifyDataSetInvalidated()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/asus/filemanager2/adapter/FileListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
