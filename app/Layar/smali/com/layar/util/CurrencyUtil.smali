.class public Lcom/layar/util/CurrencyUtil;
.super Ljava/lang/Object;
.source "CurrencyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCurrencyString(Lcom/layar/data/layer/Layer20$Premium;)Ljava/lang/String;
    .locals 2
    .parameter "premium"

    .prologue
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layar/data/layer/Layer20$Premium;->currency:Ljava/lang/String;

    invoke-static {v1}, Lcom/layar/util/CurrencyUtil;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layar/data/layer/Layer20$Premium;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "currencyCode"

    .prologue
    .line 12
    const-string v0, "USD"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "USD "

    .line 18
    :goto_0
    return-object v0

    .line 13
    :cond_0
    const-string v0, "CAD"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CAD "

    goto :goto_0

    .line 14
    :cond_1
    const-string v0, "GBP"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GBP "

    goto :goto_0

    .line 15
    :cond_2
    const-string v0, "AUD"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AUD "

    goto :goto_0

    .line 16
    :cond_3
    const-string v0, "EUR"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "EUR "

    goto :goto_0

    .line 17
    :cond_4
    const-string v0, "JPY"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "JPY "

    goto :goto_0

    .line 18
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
