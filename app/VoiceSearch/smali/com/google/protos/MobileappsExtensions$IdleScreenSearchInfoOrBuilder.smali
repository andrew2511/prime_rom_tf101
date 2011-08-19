.class public interface abstract Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfoOrBuilder;
.super Ljava/lang/Object;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IdleScreenSearchInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getAction()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;
.end method

.method public abstract getActionProperties(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;
.end method

.method public abstract getActionPropertiesCount()I
.end method

.method public abstract getActionPropertiesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActionTrigger()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
.end method

.method public abstract getBandwidth()I
.end method

.method public abstract getCellid()Ljava/lang/String;
.end method

.method public abstract getCellidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCurrentMccMnc()I
.end method

.method public abstract getDeviceOrientation()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
.end method

.method public abstract getDropListItems(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
.end method

.method public abstract getDropListItemsCount()I
.end method

.method public abstract getDropListItemsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDroplistCursor()I
.end method

.method public abstract getDroplistText()Ljava/lang/String;
.end method

.method public abstract getDroplistTextBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
.end method

.method public abstract getDurationMs()I
.end method

.method public abstract getFeatureTypes(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;
.end method

.method public abstract getFeatureTypesCount()I
.end method

.method public abstract getFeatureTypesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGaiaBrowserUsage()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
.end method

.method public abstract getHomeMccMnc()I
.end method

.method public abstract getLatencies(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
.end method

.method public abstract getLatenciesCount()I
.end method

.method public abstract getLatenciesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatencyFactor()I
.end method

.method public abstract getLatencyTimeout()Z
.end method

.method public abstract getLatencyType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
.end method

.method public abstract getLatitude()I
.end method

.method public abstract getLocationWasAvailable()Z
.end method

.method public abstract getLongitude()I
.end method

.method public abstract getNetworkProtocol()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
.end method

.method public abstract getNewCountryCode()Ljava/lang/String;
.end method

.method public abstract getNewCountryCodeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNumGaiaAccounts()I
.end method

.method public abstract getOldCountryCode()Ljava/lang/String;
.end method

.method public abstract getOldCountryCodeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPhoneTopDisplay()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
.end method

.method public abstract getRimVendorId()I
.end method

.method public abstract getSafeSearchFilter()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
.end method

.method public abstract getSignalStrength()I
.end method

.method public abstract getSuggestionSource()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
.end method

.method public abstract getSuggestionSourceIndex()I
.end method

.method public abstract getTcpApnSetting()Ljava/lang/String;
.end method

.method public abstract getTcpApnSettingBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTextBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTextModification()Lcom/google/protos/MobileappsExtensions$TextModification;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getUserStudyId()Ljava/lang/String;
.end method

.method public abstract getUserStudyIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUtteranceId()Ljava/lang/String;
.end method

.method public abstract getUtteranceIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVoiceSearchAction()Ljava/lang/String;
.end method

.method public abstract getVoiceSearchActionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVoiceSearchActionSlot()Ljava/lang/String;
.end method

.method public abstract getVoiceSearchActionSlotBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVoiceSearchButton()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
.end method

.method public abstract getVoiceSearchContactAddressType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
.end method

.method public abstract getVoiceSearchLanguage()Ljava/lang/String;
.end method

.method public abstract getVoiceSearchLanguageBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAction()Z
.end method

.method public abstract hasActionTrigger()Z
.end method

.method public abstract hasBandwidth()Z
.end method

.method public abstract hasCellid()Z
.end method

.method public abstract hasCurrentMccMnc()Z
.end method

.method public abstract hasDeviceOrientation()Z
.end method

.method public abstract hasDroplistCursor()Z
.end method

.method public abstract hasDroplistText()Z
.end method

.method public abstract hasDroplistType()Z
.end method

.method public abstract hasDurationMs()Z
.end method

.method public abstract hasGaiaBrowserUsage()Z
.end method

.method public abstract hasHomeMccMnc()Z
.end method

.method public abstract hasLatencyFactor()Z
.end method

.method public abstract hasLatencyTimeout()Z
.end method

.method public abstract hasLatencyType()Z
.end method

.method public abstract hasLatitude()Z
.end method

.method public abstract hasLocationWasAvailable()Z
.end method

.method public abstract hasLongitude()Z
.end method

.method public abstract hasNetworkProtocol()Z
.end method

.method public abstract hasNewCountryCode()Z
.end method

.method public abstract hasNumGaiaAccounts()Z
.end method

.method public abstract hasOldCountryCode()Z
.end method

.method public abstract hasPhoneTopDisplay()Z
.end method

.method public abstract hasRimVendorId()Z
.end method

.method public abstract hasSafeSearchFilter()Z
.end method

.method public abstract hasSignalStrength()Z
.end method

.method public abstract hasSuggestionSource()Z
.end method

.method public abstract hasSuggestionSourceIndex()Z
.end method

.method public abstract hasTcpApnSetting()Z
.end method

.method public abstract hasText()Z
.end method

.method public abstract hasTextModification()Z
.end method

.method public abstract hasTimestamp()Z
.end method

.method public abstract hasUserStudyId()Z
.end method

.method public abstract hasUtteranceId()Z
.end method

.method public abstract hasVoiceSearchAction()Z
.end method

.method public abstract hasVoiceSearchActionSlot()Z
.end method

.method public abstract hasVoiceSearchButton()Z
.end method

.method public abstract hasVoiceSearchContactAddressType()Z
.end method

.method public abstract hasVoiceSearchLanguage()Z
.end method
