.class public Lcom/asus/filemanager/sort/SortUtil;
.super Ljava/lang/Object;
.source "SortUtil.java"


# instance fields
.field private mAscending:Z

.field private mFolderFirst:Z

.field private mSortSetting:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "i"

    .prologue
    const/4 v1, 0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/filemanager/sort/SortUtil;->mSortSetting:I

    .line 15
    iput-boolean v1, p0, Lcom/asus/filemanager/sort/SortUtil;->mFolderFirst:Z

    .line 16
    iput-boolean v1, p0, Lcom/asus/filemanager/sort/SortUtil;->mAscending:Z

    .line 20
    iput p1, p0, Lcom/asus/filemanager/sort/SortUtil;->mSortSetting:I

    .line 21
    return-void
.end method


# virtual methods
.method public SortFiles([Lcom/asus/filemanager/main/VFile;)[Lcom/asus/filemanager/main/VFile;
    .locals 2
    .parameter "f"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 58
    iget v0, p0, Lcom/asus/filemanager/sort/SortUtil;->mSortSetting:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    iget-boolean v0, p0, Lcom/asus/filemanager/sort/SortUtil;->mFolderFirst:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/asus/filemanager/sort/SortType;

    invoke-direct {v0}, Lcom/asus/filemanager/sort/SortType;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 76
    :cond_0
    return-object p1

    .line 61
    :pswitch_0
    new-instance v0, Lcom/asus/filemanager/sort/SortName;

    iget-boolean v1, p0, Lcom/asus/filemanager/sort/SortUtil;->mAscending:Z

    invoke-direct {v0, v1}, Lcom/asus/filemanager/sort/SortName;-><init>(Z)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    .line 64
    :pswitch_1
    new-instance v0, Lcom/asus/filemanager/sort/SortExtName;

    iget-boolean v1, p0, Lcom/asus/filemanager/sort/SortUtil;->mAscending:Z

    invoke-direct {v0, v1}, Lcom/asus/filemanager/sort/SortExtName;-><init>(Z)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    .line 67
    :pswitch_2
    new-instance v0, Lcom/asus/filemanager/sort/SortSize;

    iget-boolean v1, p0, Lcom/asus/filemanager/sort/SortUtil;->mAscending:Z

    invoke-direct {v0, v1}, Lcom/asus/filemanager/sort/SortSize;-><init>(Z)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    .line 70
    :pswitch_3
    new-instance v0, Lcom/asus/filemanager/sort/SortTime;

    iget-boolean v1, p0, Lcom/asus/filemanager/sort/SortUtil;->mAscending:Z

    invoke-direct {v0, v1}, Lcom/asus/filemanager/sort/SortTime;-><init>(Z)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
