.class final Lorg/apache/harmony/security/x509/GeneralName$1;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "GeneralName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 870
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    packed-switch v2, :pswitch_data_a8

    .line 914
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeneralName: unknown tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 884
    :pswitch_20
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/OtherName;

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/OtherName;)V

    .line 916
    .local v0, result:Lorg/apache/harmony/security/x509/GeneralName;
    :goto_29
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    #setter for: Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B
    invoke-static {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->access$202(Lorg/apache/harmony/security/x509/GeneralName;[B)[B

    .line 917
    return-object v0

    .line 888
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local p0
    :pswitch_31
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, v2, p0}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 889
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 891
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local p0
    :pswitch_3d
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/ORAddress;

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/ORAddress;)V

    .line 892
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 894
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local p0
    :pswitch_47
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x501/Name;)V

    .line 895
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 897
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local p0
    :pswitch_51
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/EDIPartyName;

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/EDIPartyName;)V

    .line 898
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 900
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local p0
    :pswitch_5b
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 901
    .local v1, uri:Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_81

    .line 902
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeneralName: scheme is missing in URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 904
    :cond_81
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 905
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 907
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .end local v1           #uri:Ljava/lang/String;
    :pswitch_89
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;-><init>([B)V

    .line 908
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 910
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local p0
    :pswitch_95
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 912
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 882
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_31
        :pswitch_31
        :pswitch_3d
        :pswitch_47
        :pswitch_51
        :pswitch_5b
        :pswitch_89
        :pswitch_95
    .end packed-switch
.end method

.method public getIndex(Ljava/lang/Object;)I
    .registers 3
    .parameter "object"

    .prologue
    .line 877
    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    .end local p1
    #getter for: Lorg/apache/harmony/security/x509/GeneralName;->tag:I
    invoke-static {p1}, Lorg/apache/harmony/security/x509/GeneralName;->access$100(Lorg/apache/harmony/security/x509/GeneralName;)I

    move-result v0

    return v0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "value"

    .prologue
    .line 873
    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    .end local p1
    #getter for: Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/harmony/security/x509/GeneralName;->access$000(Lorg/apache/harmony/security/x509/GeneralName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
