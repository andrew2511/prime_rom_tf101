.class public final Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DeviceDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppDetails"
.end annotation


# instance fields
.field private appCategory_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private contentRating_:I

.field private developerEmail_:Ljava/lang/String;

.field private developerName_:Ljava/lang/String;

.field private developerWebsite_:Ljava/lang/String;

.field private hasContentRating:Z

.field private hasDeveloperEmail:Z

.field private hasDeveloperName:Z

.field private hasDeveloperWebsite:Z

.field private hasInstallationSize:Z

.field private hasMajorVersionNumber:Z

.field private hasNumDownloads:Z

.field private hasPackageName:Z

.field private hasRecentChangesHtml:Z

.field private hasTitle:Z

.field private hasUploadDate:Z

.field private hasVersionCode:Z

.field private hasVersionString:Z

.field private installationSize_:J

.field private majorVersionNumber_:I

.field private numDownloads_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;

.field private permission_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recentChangesHtml_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private uploadDate_:Ljava/lang/String;

.field private versionCode_:I

.field private versionString_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 776
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 781
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->developerName_:Ljava/lang/String;

    .line 798
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->majorVersionNumber_:I

    .line 815
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->versionCode_:I

    .line 832
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->versionString_:Ljava/lang/String;

    .line 849
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->title_:Ljava/lang/String;

    .line 865
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->appCategory_:Ljava/util/List;

    .line 899
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->contentRating_:I

    .line 916
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->installationSize_:J

    .line 932
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->permission_:Ljava/util/List;

    .line 966
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->developerEmail_:Ljava/lang/String;

    .line 983
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->developerWebsite_:Ljava/lang/String;

    .line 1000
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->numDownloads_:Ljava/lang/String;

    .line 1017
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->packageName_:Ljava/lang/String;

    .line 1034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->recentChangesHtml_:Ljava/lang/String;

    .line 1051
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->uploadDate_:Ljava/lang/String;

    .line 1138
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->cachedSize:I

    .line 776
    return-void
.end method


# virtual methods
.method public addAppCategory(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 882
    if-nez p1, :cond_0

    .line 883
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->appCategory_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->appCategory_:Ljava/util/List;

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->appCategory_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    return-object p0
.end method

.method public addPermission(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 949
    if-nez p1, :cond_0

    .line 950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->permission_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->permission_:Ljava/util/List;

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->permission_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    return-object p0
.end method

.method public getAppCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->appCategory_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1140
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getSerializedSize()I

    .line 1144
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->cachedSize:I

    return v0
.end method

.method public getContentRating()I
    .locals 1

    .prologue
    .line 900
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->contentRating_:I

    return v0
.end method

.method public getDeveloperEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->developerEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->developerName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->developerWebsite_:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallationSize()J
    .locals 2

    .prologue
    .line 917
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->installationSize_:J

    return-wide v0
.end method

.method public getMajorVersionNumber()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->majorVersionNumber_:I

    return v0
.end method

.method public getNumDownloads()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->numDownloads_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->permission_:Ljava/util/List;

    return-object v0
.end method

.method public getRecentChangesHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->recentChangesHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1148
    const/4 v3, 0x0

    .line 1149
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasDeveloperName()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1150
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getDeveloperName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1153
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasMajorVersionNumber()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1154
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getMajorVersionNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1157
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasVersionCode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1158
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getVersionCode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1161
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasVersionString()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1162
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getVersionString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1165
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1166
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1170
    :cond_4
    const/4 v0, 0x0

    .line 1171
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getAppCategoryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1172
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1175
    .end local v1           #element:Ljava/lang/String;
    :cond_5
    add-int/2addr v3, v0

    .line 1176
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getAppCategoryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1178
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasContentRating()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1179
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getContentRating()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1182
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasInstallationSize()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1183
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getInstallationSize()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1187
    :cond_7
    const/4 v0, 0x0

    .line 1188
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1189
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 1192
    .end local v1           #element:Ljava/lang/String;
    :cond_8
    add-int/2addr v3, v0

    .line 1193
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1195
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasDeveloperEmail()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1196
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getDeveloperEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1199
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasDeveloperWebsite()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1200
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getDeveloperWebsite()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1203
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasNumDownloads()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1204
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getNumDownloads()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1207
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasPackageName()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1208
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1211
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasRecentChangesHtml()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1212
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getRecentChangesHtml()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1215
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasUploadDate()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1216
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1219
    :cond_e
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->cachedSize:I

    .line 1220
    return v3
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->uploadDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->versionCode_:I

    return v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->versionString_:Ljava/lang/String;

    return-object v0
.end method

.method public hasContentRating()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasContentRating:Z

    return v0
.end method

.method public hasDeveloperEmail()Z
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasDeveloperEmail:Z

    return v0
.end method

.method public hasDeveloperName()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasDeveloperName:Z

    return v0
.end method

.method public hasDeveloperWebsite()Z
    .locals 1

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasDeveloperWebsite:Z

    return v0
.end method

.method public hasInstallationSize()Z
    .locals 1

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasInstallationSize:Z

    return v0
.end method

.method public hasMajorVersionNumber()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasMajorVersionNumber:Z

    return v0
.end method

.method public hasNumDownloads()Z
    .locals 1

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasNumDownloads:Z

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 1019
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasPackageName:Z

    return v0
.end method

.method public hasRecentChangesHtml()Z
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasRecentChangesHtml:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasTitle:Z

    return v0
.end method

.method public hasUploadDate()Z
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasUploadDate:Z

    return v0
.end method

.method public hasVersionCode()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasVersionCode:Z

    return v0
.end method

.method public hasVersionString()Z
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasVersionString:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1227
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1228
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1232
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1233
    :sswitch_0
    return-object p0

    .line 1238
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setDeveloperName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1242
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setMajorVersionNumber(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1246
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setVersionCode(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1250
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setVersionString(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1254
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1258
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->addAppCategory(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1262
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setContentRating(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1266
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setInstallationSize(J)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1270
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->addPermission(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1274
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setDeveloperEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1278
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setDeveloperWebsite(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1282
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setNumDownloads(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1286
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setPackageName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1290
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setRecentChangesHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto :goto_0

    .line 1294
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->setUploadDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    goto/16 :goto_0

    .line 1228
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x3a -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    return-object v0
.end method

.method public setContentRating(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasContentRating:Z

    .line 904
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->contentRating_:I

    .line 905
    return-object p0
.end method

.method public setDeveloperEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasDeveloperEmail:Z

    .line 971
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->developerEmail_:Ljava/lang/String;

    .line 972
    return-object p0
.end method

.method public setDeveloperName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasDeveloperName:Z

    .line 786
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->developerName_:Ljava/lang/String;

    .line 787
    return-object p0
.end method

.method public setDeveloperWebsite(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasDeveloperWebsite:Z

    .line 988
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->developerWebsite_:Ljava/lang/String;

    .line 989
    return-object p0
.end method

.method public setInstallationSize(J)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasInstallationSize:Z

    .line 921
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->installationSize_:J

    .line 922
    return-object p0
.end method

.method public setMajorVersionNumber(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasMajorVersionNumber:Z

    .line 803
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->majorVersionNumber_:I

    .line 804
    return-object p0
.end method

.method public setNumDownloads(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasNumDownloads:Z

    .line 1005
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->numDownloads_:Ljava/lang/String;

    .line 1006
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasPackageName:Z

    .line 1022
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->packageName_:Ljava/lang/String;

    .line 1023
    return-object p0
.end method

.method public setRecentChangesHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasRecentChangesHtml:Z

    .line 1039
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->recentChangesHtml_:Ljava/lang/String;

    .line 1040
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasTitle:Z

    .line 854
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->title_:Ljava/lang/String;

    .line 855
    return-object p0
.end method

.method public setUploadDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasUploadDate:Z

    .line 1056
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->uploadDate_:Ljava/lang/String;

    .line 1057
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasVersionCode:Z

    .line 820
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->versionCode_:I

    .line 821
    return-object p0
.end method

.method public setVersionString(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasVersionString:Z

    .line 837
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->versionString_:Ljava/lang/String;

    .line 838
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1091
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasDeveloperName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1092
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getDeveloperName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1094
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasMajorVersionNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1095
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getMajorVersionNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1097
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasVersionCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1098
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getVersionCode()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1100
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasVersionString()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1101
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getVersionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1103
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1104
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1106
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getAppCategoryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1107
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1109
    .end local v0           #element:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasContentRating()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1110
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getContentRating()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1112
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasInstallationSize()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1113
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getInstallationSize()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1115
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1116
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 1118
    .end local v0           #element:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasDeveloperEmail()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1119
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getDeveloperEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1121
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasDeveloperWebsite()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1122
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getDeveloperWebsite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1124
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasNumDownloads()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1125
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getNumDownloads()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1127
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasPackageName()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1128
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1130
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasRecentChangesHtml()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1131
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getRecentChangesHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1133
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->hasUploadDate()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1134
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1136
    :cond_e
    return-void
.end method
