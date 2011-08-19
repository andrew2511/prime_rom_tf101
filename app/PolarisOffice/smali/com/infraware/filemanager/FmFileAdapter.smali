.class public Lcom/infraware/filemanager/FmFileAdapter;
.super Ljava/lang/Object;
.source "FmFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/FmFileAdapter$DateCompare;,
        Lcom/infraware/filemanager/FmFileAdapter$NameCompare;,
        Lcom/infraware/filemanager/FmFileAdapter$SizeCompare;,
        Lcom/infraware/filemanager/FmFileAdapter$TypeCompare;
    }
.end annotation


# instance fields
.field private m_bAscend:Z

.field private m_bShowExt:Z

.field private m_listFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/infraware/filemanager/FmFileItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_nSort:I

.field private m_oContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_oContext:Landroid/content/Context;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_nSort:I

    .line 18
    iput-boolean v1, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_bAscend:Z

    .line 19
    iput-boolean v1, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_bShowExt:Z

    .line 23
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_oContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public addList(Lcom/infraware/filemanager/FmFileItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public clearList()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/filemanager/FmFileItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    return-object v0
.end method

.method public getIsAscending()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_bAscend:Z

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Lcom/infraware/filemanager/FmFileItem;)I
    .locals 5
    .parameter "item"

    .prologue
    .line 54
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 55
    .local v0, nCount:I
    const/4 v1, 0x0

    .line 57
    .local v1, nIndex:I
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 65
    const/4 v3, -0x1

    :goto_1
    return v3

    .line 59
    :cond_0
    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/FmFileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/FmFileItem;

    .line 60
    .local v2, oTempItem:Lcom/infraware/filemanager/FmFileItem;
    if-eqz v2, :cond_1

    .line 61
    iget-object v3, v2, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    iget-object v4, p1, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 62
    iget-object v3, v2, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    iget-object v4, p1, Lcom/infraware/filemanager/FmFileItem;->m_strExt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 63
    goto :goto_1

    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getShowExt()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_bShowExt:Z

    return v0
.end method

.method public getSortField()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_nSort:I

    return v0
.end method

.method public isAscending()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_bAscend:Z

    return v0
.end method

.method public setAscending()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_bAscend:Z

    .line 116
    return-void
.end method

.method public setDescending()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_bAscend:Z

    .line 120
    return-void
.end method

.method public setShowExt(Z)V
    .locals 0
    .parameter "a_bIsShow"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_bShowExt:Z

    .line 125
    return-void
.end method

.method public setSortField(I)V
    .locals 0
    .parameter "a_nSortField"

    .prologue
    .line 98
    iput p1, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_nSort:I

    .line 99
    return-void
.end method

.method public sortFileList()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 132
    const/4 v7, 0x0

    .line 133
    .local v7, oUpperFolder:Lcom/infraware/filemanager/FmFileItem;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v6, oFolderList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/FmFileItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v5, oFileList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/FmFileItem;>;"
    iget-object v8, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 138
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 152
    iget-object v8, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 154
    iget v8, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_nSort:I

    packed-switch v8, :pswitch_data_0

    .line 170
    new-instance v8, Lcom/infraware/filemanager/FmFileAdapter$NameCompare;

    invoke-direct {v8, p0, v10}, Lcom/infraware/filemanager/FmFileAdapter$NameCompare;-><init>(Lcom/infraware/filemanager/FmFileAdapter;Lcom/infraware/filemanager/FmFileAdapter$NameCompare;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    new-instance v8, Lcom/infraware/filemanager/FmFileAdapter$NameCompare;

    invoke-direct {v8, p0, v10}, Lcom/infraware/filemanager/FmFileAdapter$NameCompare;-><init>(Lcom/infraware/filemanager/FmFileAdapter;Lcom/infraware/filemanager/FmFileAdapter$NameCompare;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    :goto_1
    const/4 v2, 0x0

    .line 176
    .local v2, index:I
    if-eqz v7, :cond_0

    .line 178
    iget-object v8, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const/4 v2, 0x1

    .line 182
    :cond_0
    iget-boolean v8, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_bAscend:Z

    if-eqz v8, :cond_7

    .line 183
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 184
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/infraware/filemanager/FmFileItem;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 187
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 188
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 203
    :cond_1
    return-void

    .line 140
    .end local v2           #index:I
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/infraware/filemanager/FmFileItem;>;"
    :cond_2
    iget-object v8, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/infraware/filemanager/FmFileItem;

    .line 141
    .local v3, item:Lcom/infraware/filemanager/FmFileItem;
    iget-boolean v8, v3, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v8, :cond_4

    .line 143
    iget-object v8, v3, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    const-string v9, ".."

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 144
    move-object v7, v3

    .line 138
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_3
    iget-object v8, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/FmFileItem;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 149
    :cond_4
    iget-object v8, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/FmFileItem;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 157
    .end local v3           #item:Lcom/infraware/filemanager/FmFileItem;
    :pswitch_0
    new-instance v8, Lcom/infraware/filemanager/FmFileAdapter$DateCompare;

    invoke-direct {v8, p0, v10}, Lcom/infraware/filemanager/FmFileAdapter$DateCompare;-><init>(Lcom/infraware/filemanager/FmFileAdapter;Lcom/infraware/filemanager/FmFileAdapter$DateCompare;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    new-instance v8, Lcom/infraware/filemanager/FmFileAdapter$DateCompare;

    invoke-direct {v8, p0, v10}, Lcom/infraware/filemanager/FmFileAdapter$DateCompare;-><init>(Lcom/infraware/filemanager/FmFileAdapter;Lcom/infraware/filemanager/FmFileAdapter$DateCompare;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 161
    :pswitch_1
    new-instance v8, Lcom/infraware/filemanager/FmFileAdapter$NameCompare;

    invoke-direct {v8, p0, v10}, Lcom/infraware/filemanager/FmFileAdapter$NameCompare;-><init>(Lcom/infraware/filemanager/FmFileAdapter;Lcom/infraware/filemanager/FmFileAdapter$NameCompare;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 162
    new-instance v8, Lcom/infraware/filemanager/FmFileAdapter$SizeCompare;

    invoke-direct {v8, p0, v10}, Lcom/infraware/filemanager/FmFileAdapter$SizeCompare;-><init>(Lcom/infraware/filemanager/FmFileAdapter;Lcom/infraware/filemanager/FmFileAdapter$SizeCompare;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 165
    :pswitch_2
    new-instance v8, Lcom/infraware/filemanager/FmFileAdapter$NameCompare;

    invoke-direct {v8, p0, v10}, Lcom/infraware/filemanager/FmFileAdapter$NameCompare;-><init>(Lcom/infraware/filemanager/FmFileAdapter;Lcom/infraware/filemanager/FmFileAdapter$NameCompare;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    new-instance v8, Lcom/infraware/filemanager/FmFileAdapter$TypeCompare;

    invoke-direct {v8, p0, v10}, Lcom/infraware/filemanager/FmFileAdapter$TypeCompare;-><init>(Lcom/infraware/filemanager/FmFileAdapter;Lcom/infraware/filemanager/FmFileAdapter$TypeCompare;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_1

    .line 185
    .restart local v2       #index:I
    .restart local v4       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/infraware/filemanager/FmFileItem;>;"
    :cond_5
    iget-object v9, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/FmFileItem;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 189
    :cond_6
    iget-object v9, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/FmFileItem;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 191
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/infraware/filemanager/FmFileItem;>;"
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 192
    .restart local v4       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/infraware/filemanager/FmFileItem;>;"
    iget-object v8, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    .line 193
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_8

    .line 197
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 198
    iget-object v8, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    .line 199
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 200
    iget-object v9, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/FmFileItem;

    invoke-interface {v9, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 194
    :cond_8
    iget-object v9, p0, Lcom/infraware/filemanager/FmFileAdapter;->m_listFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/FmFileItem;

    invoke-interface {v9, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
