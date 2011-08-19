.class public interface abstract Lcom/amazon/kcp/store/models/IBuyResultsModel;
.super Ljava/lang/Object;
.source "IBuyResultsModel.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IAsyncModel;


# static fields
.field public static final EBookPurchaseTypeNormal:I = 0x0

.field public static final EBookPurchaseTypeSample:I = 0x1


# virtual methods
.method public abstract empty()V
.end method

.method public abstract getBookDetails()Lcom/amazon/kcp/store/models/IBookDetails;
.end method

.method public abstract getDateAcquired()Ljava/lang/String;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getOrderID()Ljava/lang/String;
.end method

.method public abstract getStatusCode()I
.end method

.method public abstract getType()I
.end method

.method public abstract setBookDetails(Lcom/amazon/kcp/store/models/IBookDetails;)V
.end method

.method public abstract setDateAcquired(Ljava/lang/String;)V
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setOrderID(Ljava/lang/String;)V
.end method

.method public abstract setStatusCode(I)V
.end method

.method public abstract setType(I)V
.end method

.method public abstract wasAlreadyOwned()Z
.end method
