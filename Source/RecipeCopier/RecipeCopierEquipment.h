#pragma once

#include "FGEquipment.h"
#include "RecipeCopierEquipment.generated.h"

UCLASS()
class RECIPECOPIER_API ARecipeCopierEquipment: public AFGEquipment
{
	GENERATED_BODY()
public:
	ARecipeCopierEquipment();

	UFUNCTION(BlueprintCallable)
    virtual void PrimaryFirePressed(class AFGBuildable* targetBuildable);

public:
	FORCEINLINE ~ARecipeCopierEquipment() = default;	
};
