.class public Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;
.super Ljava/lang/Object;
.source "PersistentSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/system/io/PersistentSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinarySettings"
.end annotation


# instance fields
.field private binary:Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;)V
    .locals 0
    .parameter "binary"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;->binary:Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;Lcom/amazon/system/io/PersistentSettingsHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;-><init>(Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;[B)[B
    .locals 1
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;->binary:Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->get(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;->binary:Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->read(Ljava/io/DataInputStream;)V

    .line 98
    return-void
.end method

.method public remove(Ljava/lang/String;)[B
    .locals 1
    .parameter "name"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;->binary:Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->remove(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[B)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;->binary:Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->set(Ljava/lang/String;[B)V

    .line 66
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;->binary:Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;->write(Ljava/io/DataOutputStream;)V

    .line 108
    return-void
.end method
