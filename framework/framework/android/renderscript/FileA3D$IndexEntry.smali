.class public Landroid/renderscript/FileA3D$IndexEntry;
.super Ljava/lang/Object;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/FileA3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexEntry"
.end annotation


# instance fields
.field mEntryType:Landroid/renderscript/FileA3D$EntryType;

.field mID:I

.field mIndex:I

.field mLoadedObj:Landroid/renderscript/BaseObj;

.field mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(Landroid/renderscript/RenderScript;IILjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V
    .registers 7
    .parameter "rs"
    .parameter "index"
    .parameter "id"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    .line 151
    iput p2, p0, Landroid/renderscript/FileA3D$IndexEntry;->mIndex:I

    .line 152
    iput p3, p0, Landroid/renderscript/FileA3D$IndexEntry;->mID:I

    .line 153
    iput-object p4, p0, Landroid/renderscript/FileA3D$IndexEntry;->mName:Ljava/lang/String;

    .line 154
    iput-object p5, p0, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    .line 156
    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;
    .registers 7
    .parameter "rs"
    .parameter "entry"

    .prologue
    const/4 v4, 0x0

    .line 125
    const-class v1, Landroid/renderscript/FileA3D$IndexEntry;

    monitor-enter v1

    :try_start_4
    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    if-eqz v2, :cond_c

    .line 126
    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_3d

    .line 146
    :goto_a
    monitor-exit v1

    return-object v2

    .line 130
    :cond_c
    :try_start_c
    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    sget-object v3, Landroid/renderscript/FileA3D$EntryType;->UNKNOWN:Landroid/renderscript/FileA3D$EntryType;

    if-ne v2, v3, :cond_14

    move-object v2, v4

    .line 131
    goto :goto_a

    .line 134
    :cond_14
    iget v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mID:I

    iget v3, p1, Landroid/renderscript/FileA3D$IndexEntry;->mIndex:I

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nFileA3DGetEntryByIndex(II)I

    move-result v0

    .line 135
    .local v0, objectID:I
    if-nez v0, :cond_20

    move-object v2, v4

    .line 136
    goto :goto_a

    .line 139
    :cond_20
    sget-object v2, Landroid/renderscript/FileA3D$1;->$SwitchMap$android$renderscript$FileA3D$EntryType:[I

    iget-object v3, p1, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    invoke-virtual {v3}, Landroid/renderscript/FileA3D$EntryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_40

    .line 145
    :goto_2d
    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    invoke-virtual {v2}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 146
    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    goto :goto_a

    .line 141
    :pswitch_35
    new-instance v2, Landroid/renderscript/Mesh;

    invoke-direct {v2, v0, p0}, Landroid/renderscript/Mesh;-><init>(ILandroid/renderscript/RenderScript;)V

    iput-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_3d

    goto :goto_2d

    .line 125
    .end local v0           #objectID:I
    :catchall_3d
    move-exception v2

    monitor-exit v1

    throw v2

    .line 139
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_35
    .end packed-switch
.end method


# virtual methods
.method public getEntryType()Landroid/renderscript/FileA3D$EntryType;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    return-object v0
.end method

.method public getMesh()Landroid/renderscript/Mesh;
    .registers 1

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/renderscript/FileA3D$IndexEntry;->getObject()Landroid/renderscript/BaseObj;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/renderscript/Mesh;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Landroid/renderscript/BaseObj;
    .registers 3

    .prologue
    .line 109
    iget-object v1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 110
    iget-object v1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1, p0}, Landroid/renderscript/FileA3D$IndexEntry;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;

    move-result-object v0

    .line 111
    .local v0, obj:Landroid/renderscript/BaseObj;
    return-object v0
.end method
