.class public final Lcom/android/contacts/ContactLoader$Result;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# static fields
.field public static final ERROR:Lcom/android/contacts/ContactLoader$Result;

.field public static final NOT_FOUND:Lcom/android/contacts/ContactLoader$Result;


# instance fields
.field private mDirectoryAccountName:Ljava/lang/String;

.field private mDirectoryAccountType:Ljava/lang/String;

.field private mDirectoryDisplayName:Ljava/lang/String;

.field private mDirectoryExportSupport:I

.field private final mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/String;

.field private final mDisplayNameSource:I

.field private final mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private mLoadingPhoto:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mNameRawContactId:J

.field private final mPhoneticName:Ljava/lang/String;

.field private mPhotoBinaryData:[B

.field private final mPhotoId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mPresence:Ljava/lang/Integer;

.field private final mStarred:Z

.field private final mStatus:Ljava/lang/String;

.field private final mStatusLabel:Ljava/lang/Integer;

.field private final mStatusResPackage:Ljava/lang/String;

.field private final mStatusTimestamp:Ljava/lang/Long;

.field private final mStatuses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {v0}, Lcom/android/contacts/ContactLoader$Result;-><init>()V

    sput-object v0, Lcom/android/contacts/ContactLoader$Result;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result;

    .line 84
    new-instance v0, Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {v0}, Lcom/android/contacts/ContactLoader$Result;-><init>()V

    sput-object v0, Lcom/android/contacts/ContactLoader$Result;->ERROR:Lcom/android/contacts/ContactLoader$Result;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 123
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 124
    iput-wide v1, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 125
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 126
    iput-wide v1, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 127
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 128
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    .line 129
    iput-wide v1, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 130
    iput v3, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 131
    iput-wide v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 132
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 135
    iput-boolean v3, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 136
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 137
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatusTimestamp:Ljava/lang/Long;

    .line 139
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatusLabel:Ljava/lang/Integer;

    .line 140
    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatusResPackage:Ljava/lang/String;

    .line 141
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "lookupUri"
    .parameter "directoryId"
    .parameter "lookupKey"
    .parameter "id"
    .parameter "nameRawContactId"
    .parameter "displayNameSource"
    .parameter "photoId"
    .parameter "photoUri"
    .parameter "displayName"
    .parameter "phoneticName"
    .parameter "starred"
    .parameter "presence"
    .parameter "status"
    .parameter "statusTimestamp"
    .parameter "statusLabel"
    .parameter "statusResPackage"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 151
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 152
    iput-wide p3, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 153
    iput-object p5, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 154
    iput-wide p6, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 156
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    .line 157
    iput-wide p8, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 158
    iput p10, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 159
    iput-wide p11, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 160
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 163
    move/from16 v0, p16

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 164
    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 165
    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactLoader$Result;->mStatus:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p19

    move-object v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactLoader$Result;->mStatusTimestamp:Ljava/lang/Long;

    .line 167
    move-object/from16 v0, p20

    move-object v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactLoader$Result;->mStatusLabel:Ljava/lang/Integer;

    .line 168
    move-object/from16 v0, p21

    move-object v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactLoader$Result;->mStatusResPackage:Ljava/lang/String;

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"
    .parameter "x12"
    .parameter "x13"
    .parameter "x14"
    .parameter "x15"
    .parameter "x16"
    .parameter "x17"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p21}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .parameter "from"

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 173
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 174
    iget-wide v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 175
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 176
    iget-wide v0, p1, Lcom/android/contacts/ContactLoader$Result;->mId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 177
    iget-wide v0, p1, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 178
    iget v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    iput v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 179
    iget-wide v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 180
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 183
    iget-boolean v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 184
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 185
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 186
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    .line 187
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Ljava/lang/String;

    .line 188
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStatusTimestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatusTimestamp:Ljava/lang/Long;

    .line 189
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStatusLabel:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatusLabel:Ljava/lang/Integer;

    .line 190
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStatusResPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatusResPackage:Ljava/lang/String;

    .line 192
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    .line 193
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    .line 195
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    .line 196
    iget v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    iput v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    .line 198
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    .line 200
    iget-boolean v0, p1, Lcom/android/contacts/ContactLoader$Result;->mLoadingPhoto:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLoadingPhoto:Z

    .line 201
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;-><init>(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/ContactLoader$Result;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setLoadingPhoto(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactLoader$Result;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/android/contacts/ContactLoader$Result;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/GroupMetaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->addGroupMetaData(Lcom/android/contacts/GroupMetaData;)V

    return-void
.end method

.method private addGroupMetaData(Lcom/android/contacts/GroupMetaData;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method private setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "displayName"
    .parameter "directoryType"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "exportSupport"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    .line 210
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    .line 212
    iput-object p4, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    .line 213
    iput p5, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    .line 214
    return-void
.end method

.method private setLoadingPhoto(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/contacts/ContactLoader$Result;->mLoadingPhoto:Z

    .line 218
    return-void
.end method

.method private setPhotoBinaryData([B)V
    .locals 0
    .parameter "photoBinaryData"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    .line 222
    return-void
.end method


# virtual methods
.method public getContentValues()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 335
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Cannot extract content values from an aggregated contact"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 339
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 340
    .local v0, entity:Landroid/content/Entity;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    .line 342
    .local v6, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    if-eqz v6, :cond_2

    .line 343
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 344
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 345
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 346
    .local v2, pair:Landroid/content/Entity$NamedContentValues;
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, v2, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 347
    iget-object v7, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1           #i:I
    .end local v2           #pair:Landroid/content/Entity$NamedContentValues;
    .end local v5           #size:I
    :cond_2
    iget-wide v7, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    if-eqz v7, :cond_3

    .line 355
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 356
    .local v3, photo:Landroid/content/ContentValues;
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v7, "data15"

    iget-object v8, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 358
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v3           #photo:Landroid/content/ContentValues;
    :cond_3
    return-object v4
.end method

.method public getDirectoryAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryExportSupport()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    return v0
.end method

.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameSource()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    return v0
.end method

.method public getEntities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroupMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameRawContactId()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    return-wide v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBinaryData()[B
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    return v0
.end method

.method public getStatusLabel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatusLabel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatusResPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatusResPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatusTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getStatuses()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    return-object v0
.end method

.method public isDirectoryEntry()Z
    .locals 4

    .prologue
    .line 301
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingPhoto()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLoadingPhoto:Z

    return v0
.end method
