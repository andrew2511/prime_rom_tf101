.class public Lnet/yostore/aws/handler/entity/PlayList;
.super Ljava/lang/Object;
.source "PlayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/handler/entity/PlayList$byName;
    }
.end annotation


# instance fields
.field private _isRandom:Z

.field private disp:Ljava/lang/String;

.field public dispArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isLoop:Z

.field public isRandom:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/PlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private pfid:Ljava/lang/String;

.field private position:I

.field public urlArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "disp"
    .parameter "pfid"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/PlayList;->isLoop:Z

    .line 11
    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/PlayList;->isRandom:Z

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->dispArr:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->urlArr:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    .line 20
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/PlayList;->disp:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/PlayList;->pfid:Ljava/lang/String;

    .line 22
    iput v1, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    .line 23
    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/PlayList;->_isRandom:Z

    .line 34
    invoke-virtual {p0, p1}, Lnet/yostore/aws/handler/entity/PlayList;->setDisp(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lnet/yostore/aws/handler/entity/PlayList;->setParentId(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private swap(Ljava/util/List;II)V
    .locals 2
    .parameter
    .parameter "i"
    .parameter "j"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, a:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, tmp:Ljava/lang/Object;,"TE;"
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method


# virtual methods
.method public addItem(Lnet/yostore/aws/handler/entity/PlayItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 39
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public addItem(Lnet/yostore/aws/handler/entity/PlayItem;Z)V
    .locals 2
    .parameter "item"
    .parameter "isTarget"

    .prologue
    .line 42
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->dispArr:Ljava/util/ArrayList;

    iget-object v1, p1, Lnet/yostore/aws/handler/entity/PlayItem;->disp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->urlArr:Ljava/util/ArrayList;

    iget-object v1, p1, Lnet/yostore/aws/handler/entity/PlayItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    if-eqz p2, :cond_0

    .line 46
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    .line 47
    :cond_0
    return-void
.end method

.method public findPositionById(Ljava/lang/String;)I
    .locals 4
    .parameter "fid"

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, rtn:I
    iget-object v3, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 70
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v2

    .line 63
    .restart local v0       #i:I
    :cond_1
    iget-object v3, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/PlayItem;

    .line 64
    .local v1, pi:Lnet/yostore/aws/handler/entity/PlayItem;
    iget-object v3, v1, Lnet/yostore/aws/handler/entity/PlayItem;->url:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    move v2, v0

    .line 66
    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCurrentPlayItem()Lnet/yostore/aws/handler/entity/PlayItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    iget v1, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/PlayItem;

    move-object v0, p0

    .line 56
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    move-object v0, v1

    .line 53
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 56
    goto :goto_0
.end method

.method public getDisp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->disp:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPlayItem()Lnet/yostore/aws/handler/entity/PlayItem;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 90
    iget v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    .line 91
    iget v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    iget v1, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/PlayItem;

    move-object v0, p0

    .line 109
    :goto_0
    return-object v0

    .line 95
    .restart local p0
    :cond_0
    iget-boolean v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->isLoop:Z

    if-eqz v0, :cond_1

    .line 96
    iput v3, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    .line 97
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/PlayItem;

    move-object v0, p0

    goto :goto_0

    .restart local p0
    :cond_1
    move-object v0, v2

    .line 100
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 105
    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 109
    goto :goto_0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->pfid:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayItem(I)Lnet/yostore/aws/handler/entity/PlayItem;
    .locals 2
    .parameter "posi"

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iput p1, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    .line 76
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    iget v1, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/PlayItem;

    move-object v0, p0

    .line 83
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    move-object v0, v1

    .line 79
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 83
    goto :goto_0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/PlayItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 141
    iget-boolean v2, p0, Lnet/yostore/aws/handler/entity/PlayList;->_isRandom:Z

    iget-boolean v3, p0, Lnet/yostore/aws/handler/entity/PlayList;->isRandom:Z

    if-eq v2, v3, :cond_0

    .line 142
    iget-boolean v2, p0, Lnet/yostore/aws/handler/entity/PlayList;->isRandom:Z

    if-eqz v2, :cond_2

    .line 143
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 144
    .local v1, rnd:Ljava/util/Random;
    iget-object v2, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-gt v0, v5, :cond_1

    .line 150
    .end local v0           #i:I
    .end local v1           #rnd:Ljava/util/Random;
    :goto_1
    iget-boolean v2, p0, Lnet/yostore/aws/handler/entity/PlayList;->isRandom:Z

    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/PlayList;->_isRandom:Z

    .line 152
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    return-object v2

    .line 145
    .restart local v0       #i:I
    .restart local v1       #rnd:Ljava/util/Random;
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    sub-int v3, v0, v5

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lnet/yostore/aws/handler/entity/PlayList;->swap(Ljava/util/List;II)V

    .line 144
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 148
    .end local v0           #i:I
    .end local v1           #rnd:Ljava/util/Random;
    :cond_2
    iget-object v2, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    new-instance v3, Lnet/yostore/aws/handler/entity/PlayList$byName;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lnet/yostore/aws/handler/entity/PlayList$byName;-><init>(Lnet/yostore/aws/handler/entity/PlayList;Lnet/yostore/aws/handler/entity/PlayList$byName;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    return v0
.end method

.method public getPrevPlayItem()Lnet/yostore/aws/handler/entity/PlayItem;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 116
    iget v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    sub-int/2addr v0, v2

    iput v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    .line 117
    iget v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    if-ltz v0, :cond_0

    .line 118
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    iget v1, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/PlayItem;

    move-object v0, p0

    .line 135
    :goto_0
    return-object v0

    .line 121
    .restart local p0
    :cond_0
    iget-boolean v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->isLoop:Z

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    .line 123
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/PlayList;->list:Ljava/util/List;

    iget v1, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/PlayItem;

    move-object v0, p0

    goto :goto_0

    .restart local p0
    :cond_1
    move-object v0, v1

    .line 126
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 131
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 135
    goto :goto_0
.end method

.method public setDisp(Ljava/lang/String;)V
    .locals 0
    .parameter "disp"

    .prologue
    .line 161
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/PlayList;->disp:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 168
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/PlayList;->pfid:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 30
    iput p1, p0, Lnet/yostore/aws/handler/entity/PlayList;->position:I

    .line 31
    return-void
.end method
