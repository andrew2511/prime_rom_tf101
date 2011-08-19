.class public interface abstract Lcom/amazon/kcp/library/models/ILocalBookInfo;
.super Ljava/lang/Object;
.source "ILocalBookInfo.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/IListableBook;


# virtual methods
.method public abstract getAmzGuid()Ljava/lang/String;
.end method

.method public abstract getAtTheFurtherReadLocationEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getBaseLanguage()Ljava/lang/String;
.end method

.method public abstract getBookFurthestLocation()I
.end method

.method public abstract getBookID()Lcom/amazon/kcp/library/models/IBookID;
.end method

.method public abstract getCreationDate()J
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getFurthestReadLocationProposalEvent()Lcom/amazon/foundation/IStringEventProvider;
.end method

.method public abstract getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;
.end method

.method public abstract getServerLastPageRead()Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;
.end method

.method public abstract getSettingsFileName()Ljava/lang/String;
.end method

.method public abstract getWatermark()Ljava/lang/String;
.end method

.method public abstract gotoFurthestReadLocation()V
.end method

.method public abstract resetServerLastPageRead()Z
.end method
