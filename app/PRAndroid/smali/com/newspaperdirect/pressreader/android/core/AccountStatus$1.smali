.class Lcom/newspaperdirect/pressreader/android/core/AccountStatus$1;
.super Ljava/lang/Object;
.source "AccountStatus.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->get()Lcom/newspaperdirect/pressreader/android/core/AccountStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$result:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus$1;->val$result:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "attributes"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus$1;->val$result:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    .line 59
    const-string v2, "subscription-plan"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->access$0(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;Ljava/lang/String;)V

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus$1;->val$result:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    .line 62
    const-string v2, "subscription-status"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->access$1(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus$1;->val$result:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    .line 68
    const-string v2, "remaining-free-credits"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->access$2(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus$1;->val$result:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    .line 74
    const-string v2, "additional-newspaper-price"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->access$3(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;F)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    :goto_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus$1;->val$result:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    .line 79
    const-string v2, "additional-newspaper-price-formatted"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->access$4(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus$1;->val$result:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    .line 81
    const-string v2, "additional-newspaper-price-currency"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->access$5(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus$1;->val$result:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    .line 83
    const-string v2, "show-remaining-free-credits"

    .line 82
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 82
    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->access$6(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;Z)V

    .line 84
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus$1;->val$result:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    const-string v2, "trial"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->access$7(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;Z)V

    .line 85
    return-void

    .line 63
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 70
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 75
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 76
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method
