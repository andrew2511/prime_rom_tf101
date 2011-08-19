.class public Lcom/amazon/system/io/PersistentSettingsHelper;
.super Ljava/lang/Object;
.source "PersistentSettingsHelper.java"

# interfaces
.implements Lcom/amazon/system/io/IPersistentSettingsHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/system/io/PersistentSettingsHelper$1;,
        Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;
    }
.end annotation


# instance fields
.field public binary:Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;

.field private persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/mobipocket/common/library/PersistentSettingTool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/PersistentSettingTool;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;

    .line 117
    new-instance v0, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;

    iget-object v1, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;

    iget-object v1, v1, Lcom/mobipocket/common/library/PersistentSettingTool;->binary:Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;-><init>(Lcom/mobipocket/common/library/PersistentSettingTool$BinarySettings;Lcom/amazon/system/io/PersistentSettingsHelper$1;)V

    iput-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->binary:Lcom/amazon/system/io/PersistentSettingsHelper$BinarySettings;

    .line 119
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;I)I
    .locals 1
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 143
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/system/io/PersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/PersistentSettingTool;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    if-eqz p2, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/system/io/PersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public load(Lcom/amazon/system/io/IFileConnectionFactory;)Z
    .locals 4
    .parameter "fileConnectionFactory"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;

    new-instance v1, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    invoke-direct {v1, p1}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/system/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persistentSettingsHelper.par"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/PersistentSettingTool;->load(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;)Z

    move-result v0

    return v0
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
    .line 181
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/PersistentSettingTool;->read(Ljava/io/DataInputStream;)V

    .line 182
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/PersistentSettingTool;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeSettingStartingWith(Ljava/lang/String;)I
    .locals 1
    .parameter "keyPrefix"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/PersistentSettingTool;->removeSettingStartingWith(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/PersistentSettingTool;->save()V

    .line 177
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mobipocket/common/library/PersistentSettingTool;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/PersistentSettingTool;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public set(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mobipocket/common/library/PersistentSettingTool;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .line 186
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingsHelper;->persistentSettingTools:Lcom/mobipocket/common/library/PersistentSettingTool;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/PersistentSettingTool;->write(Ljava/io/DataOutputStream;)V

    .line 187
    return-void
.end method
