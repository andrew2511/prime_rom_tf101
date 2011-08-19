.class public interface abstract Lcom/amazon/system/io/IPersistentSettingsHelper;
.super Ljava/lang/Object;
.source "IPersistentSettingsHelper.java"


# virtual methods
.method public abstract get(Ljava/lang/String;I)I
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract get(Ljava/lang/String;Z)Z
.end method

.method public abstract load(Lcom/amazon/system/io/IFileConnectionFactory;)Z
.end method

.method public abstract read(Ljava/io/DataInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeSettingStartingWith(Ljava/lang/String;)I
.end method

.method public abstract save()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/String;I)V
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract set(Ljava/lang/String;Z)V
.end method

.method public abstract write(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
